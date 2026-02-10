import Foundation

public protocol RollaBandWorkoutManaging: Sendable {
    func startWorkout(
        deviceUUID: BLEDeviceIdentifier,
        activityType: RollaBandWorkoutType,
        timeout: TimeInterval
    ) async throws -> WorkoutState

    func stopWorkout(
        deviceUUID: BLEDeviceIdentifier,
        activityType: RollaBandWorkoutType,
        timeout: TimeInterval
    ) async throws -> WorkoutState

    func isUserInActivity() async -> Bool
}
