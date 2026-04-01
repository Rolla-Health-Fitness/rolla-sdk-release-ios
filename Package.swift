// swift-tools-version:5.5
// Rolla SDK for iOS
//
// Usage in Xcode:
// PROJECT → Package Dependencies → Add Package Dependency
// URL: https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios.git

import PackageDescription

let package = Package(
    name: "RollaSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "RollaSDK",
            targets: ["RollaSDK"]
        )
    ],
    targets: [
        // ObjC plugin registrant (separate target: SwiftPM/Xcode doesn't allow mixed-language in one target)
        .target(
            name: "FlutterPluginRegistrant",
            dependencies: ["Flutter", "apple_health", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "FlutterPluginRegistrant",
            publicHeadersPath: "."
        ),

        // Swift wrapper API
        .target(
            name: "RollaSDK",
            dependencies: ["FlutterPluginRegistrant", "App", "Flutter", "apple_health", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "Sources"
        ),

        // Flutter module (Dart code compiled to native)
        .binaryTarget(
            name: "App",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/App.xcframework.zip",
            checksum: "fb81ad8632f645d392939045bb0c9d3f6a47052b35d33d0ae456cbbde6828aeb"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/Flutter.xcframework.zip",
            checksum: "e928665b4c8da3ec893472b93f3ab07e3abac2058693dc654340380170b7bcdf"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/apple_health.xcframework.zip",
            checksum: "4de434c8993ca8bcb5f317f2bdba840bb9155b3bb31abedea385b598599df224"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/connectivity_plus.xcframework.zip",
            checksum: "073120e4a9c534d7f2c4d68a6310f437bd5ccc9cab7906af307a06dfdccdd41a"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/device_info_plus.xcframework.zip",
            checksum: "f97247eae34ef180df4735c638c84bb71090c640292b9cdb40d168a3566edc8f"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "97d5a4b9bf9f4bb340d9b005101839eaf0d1df242169e3bbecb943ac8a4b4ce3"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/flutter_local_notifications.xcframework.zip",
            checksum: "e6a9deea72ae6f77f1e1e7ca55014584489f61f17cf0276f0553732e7fa70025"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/flutter_native_timezone_latest.xcframework.zip",
            checksum: "2ae4d602853cedf02c26eb6ca2709bdfc43c3692747d2e65338b31ebfa348142"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/flutter_secure_storage.xcframework.zip",
            checksum: "0eac1d73f6c4aab3ed94c021ecd6ef8c2a9347776b9e159462531fe0871cdd84"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/geolocator_apple.xcframework.zip",
            checksum: "8ad6528987496b34582da67d95e1fac1db7aa02f4a1823dfb573a4d704c2682d"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/image_cropper.xcframework.zip",
            checksum: "673e33c689b831dfe011cd8b041d2a2d66e5cdf9cf13f62143f3b02d69726215"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/image_picker_ios.xcframework.zip",
            checksum: "18a1130961b95b98a93852558b94d37507119edfa886cafed9eac804f5261ae8"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/mapbox_maps_flutter.xcframework.zip",
            checksum: "59eaf1cd6bebec60074fa86d89b949354861dafd949f2e0e88cb826981d2c601"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/MapboxCommon.xcframework.zip",
            checksum: "d7e0c479c26b42848ab22c48cf3bb0d8a0a00619d50933250c88257240ed81f4"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/MapboxCoreMaps.xcframework.zip",
            checksum: "35f9f28b4cd29302ec953c6d7360398ec4f23c058ca87e32c1d7745d08517a11"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/MapboxMaps.xcframework.zip",
            checksum: "23922dfe9aae0faa7686ff1375c7960add5d33e29591197ba93c71957cb46f3e"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/NordicDFU.xcframework.zip",
            checksum: "7903aaeddbbf9e0baeb4536bab16a89b50de5cc8695562eb4428bba32702885e"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/package_info_plus.xcframework.zip",
            checksum: "c3bd50fd3731813efabf193f849dc72fc61ae115514a989cf0f8a65b3e29f8fb"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/path_provider_foundation.xcframework.zip",
            checksum: "0aa273eb9fd62682fd486ced08a9375350a76a37072d92790773c913e482be45"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/permission_handler_apple.xcframework.zip",
            checksum: "4452a2200f4b2a897013ffed250a3fad9f37b4369dfec41985afefb12bcb4b43"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/share_plus.xcframework.zip",
            checksum: "069e40c07d516c4f92256afacc256b6027319262410d8538d27fda62d8a9fabe"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/shared_preferences_foundation.xcframework.zip",
            checksum: "686e8cd6e61f095a484ab83e28fe24b86994a3537de8b44bd20dfc38c5a13253"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/sqflite_darwin.xcframework.zip",
            checksum: "d8244862ea85db4bdb2f9d506d7c67effa8c88b27b12405f6ca97375a1d5d839"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/TOCropViewController.xcframework.zip",
            checksum: "6bed4d3d4bacdebc7ff42b66cfdc1f07ca3c6ab65a2789d4bdd90af456a5b85f"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/Turf.xcframework.zip",
            checksum: "7d1c7da052a70356be00d3d98d9fda3efb359de314e0bb9aa362aceafce217cf"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/url_launcher_ios.xcframework.zip",
            checksum: "1fa16bd8524258c84dea788dc2d7a36a119cb90e0e399bad08d4aaa0f6906540"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/video_player_avfoundation.xcframework.zip",
            checksum: "e29ff12b75f89206d01c756da870c144754d640c283187e6f8f15b61d4685252"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/wakelock_plus.xcframework.zip",
            checksum: "6052b8cd28692167c35dc709caca7ae60dc5a62ce5e685472776b6ab26d9e6d9"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.5/ZIPFoundation.xcframework.zip",
            checksum: "32fe0f68c1a99a774f97c9bce078394d3b52749062302e0b58b9565fe1ffdfbd"
        )
    ]
)
