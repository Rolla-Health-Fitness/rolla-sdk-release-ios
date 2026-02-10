import Foundation

public final class RollaBandWorkoutManager: RollaBandWorkoutManaging {
    private let commandExecutor: CommandExecutor
    private let rollaBandCommandExecutor: RollaBandCommandExecutor
    private let deviceManager: DeviceManager
    private let deviceIdentityManager: DeviceIdentityManaging
    private let logger: Logging
    private let activityStateTracker = ActivityStateTracker()
    
    public init(
        commandExecutor: CommandExecutor,
        rollaBandCommandExecutor: RollaBandCommandExecutor,
        deviceManager: DeviceManager,
        deviceIdentityManager: DeviceIdentityManaging,
        logger: Logging
    ) {
        self.commandExecutor = commandExecutor
        self.rollaBandCommandExecutor = rollaBandCommandExecutor
        self.deviceManager = deviceManager
        self.deviceIdentityManager = deviceIdentityManager
        self.logger = logger
    }
}

private actor ActivityStateTracker {
    private var isInActivity: Bool = false
    
    func setActive(_ active: Bool) {
        isInActivity = active
    }
    
    func isActive() -> Bool {
        isInActivity
    }
}

extension RollaBandWorkoutManager {
    public func isUserInActivity() async -> Bool {
        await activityStateTracker.isActive()
    }
    
    public func startWorkout(
        deviceUUID: BLEDeviceIdentifier,
        activityType: RollaBandWorkoutType,
        timeout: TimeInterval = 30.0
    ) async throws -> WorkoutState {
        let deviceName = await deviceManager.getDeviceName(deviceId: deviceUUID)
        logger.progress("Starting \(activityType) activity on \(deviceName ?? "Unknown Device")", category: .workout)

        do {
            try await commandExecutor.execute(EnableNotificationCommand(
                deviceID: deviceUUID,
                serviceUUID: BLEServiceType.rollaBand.uuid,
                characteristicUUID: BLECharacteristicType.rollaBandNotification.uuid,
                timeout: timeout
            ))

            try await rollaBandCommandExecutor.execute(
                SetStepCountThresholdCommand(
                    deviceUUID: deviceUUID,
                    timeout: timeout,
                    thresholdType: .start
                ),
                retryPolicy: .immediate
            )

            let controlResult = try await rollaBandCommandExecutor.execute(
                ActivityControlCommand(
                    deviceUUID: deviceUUID,
                    timeout: timeout,
                    mode: .start,
                    activityType: activityType
                ),
                retryPolicy: .immediate
            )

            switch controlResult {
            case .started(let workoutConfirmed):
                if workoutConfirmed {
                    logger.success(
                        "Activity started successfully on \(deviceName ?? "Unknown Device") - both confirmations received",
                        category: .workout
                    )
                } else {
                    logger.success(
                        "Activity control succeeded on \(deviceName ?? "Unknown Device") - workout status may have been missed",
                        category: .workout
                    )
                }

            case .alreadyActive:
                logger.success(
                    "Activity already active on \(deviceName ?? "Unknown Device") - no action needed",
                    category: .workout
                )

            case .stopped, .alreadyInactive:
                logger.error("Unexpected result for START command: \(controlResult)", category: .workout)
                throw WorkoutSessionError.activityStartFailed("Unexpected result for START command: \(controlResult)")
            }

            guard let macAddress = await deviceIdentityManager.getMAC(for: deviceUUID.value) else {
                throw BLEPeripheralError.deviceNotFound(deviceUUID.value.uuidString)
            }
            
            await activityStateTracker.setActive(true)
            
            return WorkoutState(
                macAddress: macAddress,
                deviceName: deviceName,
                activityType: activityType,
                status: .active
            )
            
        } catch {
            logger.error("Activity start failed: \(error.localizedDescription)", category: .workout)
            throw error
        }
    }
    
    public func stopWorkout(
        deviceUUID: BLEDeviceIdentifier,
        activityType: RollaBandWorkoutType,
        timeout: TimeInterval = 30.0
    ) async throws -> WorkoutState {
        let deviceName = await deviceManager.getDeviceName(deviceId: deviceUUID)
        logger.progress("Stopping \(activityType) activity on \(deviceName ?? "Unknown Device")", category: .workout)
        
        do {
            try await commandExecutor.execute(EnableNotificationCommand(
                deviceID: deviceUUID,
                serviceUUID: BLEServiceType.rollaBand.uuid,
                characteristicUUID: BLECharacteristicType.rollaBandNotification.uuid,
                timeout: timeout
            ))
            
            try await rollaBandCommandExecutor.execute(
                SetStepCountThresholdCommand(
                    deviceUUID: deviceUUID,
                    timeout: timeout,
                    thresholdType: .stop
                ),
                retryPolicy: .immediate
            )
            
            let controlResult = try await rollaBandCommandExecutor.execute(
                ActivityControlCommand(
                    deviceUUID: deviceUUID,
                    timeout: timeout,
                    mode: .stop,
                    activityType: activityType
                ),
                retryPolicy: .immediate
            )
            
            switch controlResult {
            case .stopped(let workoutConfirmed):
                if workoutConfirmed {
                    logger.success("Activity stopped successfully on \(deviceName ?? "Unknown Device") - both confirmations received", category: .workout)
                } else {
                    logger.success("Activity control stop succeeded on \(deviceName ?? "Unknown Device") - workout reminder may have been missed", category: .workout)
                }
                
            case .alreadyInactive:
                logger.success("Activity already inactive on \(deviceName ?? "Unknown Device") - no action needed", category: .workout)
                
            case .started, .alreadyActive:
                logger.error("Unexpected result for STOP command: \(controlResult)", category: .workout)
                throw WorkoutSessionError.activityStopFailed("Band returned unexpected response for stop command: \(controlResult)")
            }
            
            guard let macAddress = await deviceIdentityManager.getMAC(for: deviceUUID.value) else {
                throw BLEPeripheralError.deviceNotFound(deviceUUID.value.uuidString)
            }
            
            await activityStateTracker.setActive(false)
            
            return WorkoutState(
                macAddress: macAddress,
                deviceName: deviceName,
                activityType: activityType,
                status: .completed
            )
            
        } catch {
            logger.error("Activity stop failed: \(error.localizedDescription)", category: .workout)
            throw error
        }
    }
}
