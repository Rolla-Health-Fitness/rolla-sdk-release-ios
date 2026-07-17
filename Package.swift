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
            dependencies: ["Flutter", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "health", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "FlutterPluginRegistrant",
            publicHeadersPath: "."
        ),

        // Swift wrapper API
        .target(
            name: "RollaSDK",
            dependencies: ["FlutterPluginRegistrant", "App", "Flutter", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "health", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "Sources"
        ),

        // Flutter module (Dart code compiled to native)
        .binaryTarget(
            name: "App",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/App.xcframework.zip",
            checksum: "f557a6eb5e9e3f0d33c94667cfce9b685244b3aee3980310e83a4e8eea4bc4c6"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/Flutter.xcframework.zip",
            checksum: "4467f3449e7fdcd4f49cb14768a05a1381915a0144162013c0edb9f7c9337794"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/connectivity_plus.xcframework.zip",
            checksum: "1d0182d95a1d5d79f1bdd2c098a56c75d2e8ac350e7a647d72537f6d48abb58e"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/device_info_plus.xcframework.zip",
            checksum: "e809e3a202da7d0455d957892ac6407ea558959d3b1ec4d0769fd25eacd1fb8b"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "f417e1a008edf489ae5b6aeb544fb0d3daadaacfa8e27f5a6bea7e81219bebac"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/flutter_local_notifications.xcframework.zip",
            checksum: "66d9b84cb1346e84cf118d76f85368be1d2cd3ff939cfce77f5cf0e47a38938d"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/flutter_native_timezone_latest.xcframework.zip",
            checksum: "10f14875c248bb425e800e7b6c08e467258c0401c959932c4352ce041121dbe0"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/flutter_secure_storage.xcframework.zip",
            checksum: "1a5f972ba5e05b30893bbf97f7b3b84dcc83ad94cb0e3047176de3d6028b32b0"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/geolocator_apple.xcframework.zip",
            checksum: "37d772c475cf6039bd2fd033d9105582a483da128e38cdb2a56bcbfda56bf797"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/health.xcframework.zip",
            checksum: "7c1165f9a42ba01d87bf50763a4ba08ab959fc2a4d8a18b809bf90c83abdcfc8"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/image_cropper.xcframework.zip",
            checksum: "9a91f18586b79604dd7e6a7eb4843f06adb6480e038cb9a034067f7ce7bd3dc3"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/image_picker_ios.xcframework.zip",
            checksum: "b0d7342c4c03a8d58953e5b7ddd9b3815df73bb78208fb335c392ad417e22afd"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/mapbox_maps_flutter.xcframework.zip",
            checksum: "449a10b45a3edab4f4b7ba4ecc51cf1adbf0275c649742aafb95abfb4e058500"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/MapboxCommon.xcframework.zip",
            checksum: "e9d892b4b87d7a3a2c5894da8ab930d8733e539761f32842df4dc886ab866013"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/MapboxCoreMaps.xcframework.zip",
            checksum: "8c3102d6bbbf6678dadb2c1d29a6f6375db78b29198bb90620b7c548809a63d2"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/MapboxMaps.xcframework.zip",
            checksum: "3fa81199e8ec3a400131e94c661be32b0a93e8a76e5b645365ab38ef9aeea93b"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/NordicDFU.xcframework.zip",
            checksum: "ac06768598dadd997d5b16bc2f491f8eb4f4d28a1b1533419a8ef1c3ed07d319"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/package_info_plus.xcframework.zip",
            checksum: "4949bbc86ea4954496fa0dacefc77b8b2b58528603e753174cfed994a4081e75"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/path_provider_foundation.xcframework.zip",
            checksum: "3871e78e94002509ec783bce7c71c4b26cf269404ddd01d769e0450caa4e6989"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/permission_handler_apple.xcframework.zip",
            checksum: "3a1d604e1d29877ab82ec62537fbb1f56c0a85eddfea0f517d8aa8c6a173085a"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/share_plus.xcframework.zip",
            checksum: "03fd9bd29ed73f92bc811ea23dbfb2a2388806a1efe8d20f8db7956d4cd2685f"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/shared_preferences_foundation.xcframework.zip",
            checksum: "e828e43507f31f3999d4ddb1c3ad1c54d2a8df364d44010c3b391ccb81349618"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/sqflite_darwin.xcframework.zip",
            checksum: "72eab0f5819f3db9c3779708b6e31213099de4254ad7ba5d83c0676854093a0b"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/TOCropViewController.xcframework.zip",
            checksum: "ba7c9eeda97a1831b2ebb29b69e319aba08cce6e30ade25ebb65bc512b081171"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/Turf.xcframework.zip",
            checksum: "1f73592b5dc96154eae81cf56daedd9e3e6f8f1f92949602b440409873175ef2"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/url_launcher_ios.xcframework.zip",
            checksum: "40ab0b90ca5cc9a240ce677b285c163622844d9c0c3265db2df329aed3eef4a0"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/video_player_avfoundation.xcframework.zip",
            checksum: "2008c8cf59e9517c19a8aaab204a082e325d00884fd9d43d0588aa9b54adb7fb"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/wakelock_plus.xcframework.zip",
            checksum: "908876a9fbd0dd88f02dd85cc9a400b4c04ba5bb65961f642cf3fc0d739502c6"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.12/ZIPFoundation.xcframework.zip",
            checksum: "a52665c13e6659575551549c716a546364fb4ec54e146b3dddcf0afa9929bcfb"
        )
    ]
)
