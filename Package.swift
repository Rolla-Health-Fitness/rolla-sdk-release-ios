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
            dependencies: ["Flutter", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "FlutterPluginRegistrant",
            publicHeadersPath: "."
        ),

        // Swift wrapper API
        .target(
            name: "RollaSDK",
            dependencies: ["FlutterPluginRegistrant", "App", "Flutter", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "Sources"
        ),

        // Flutter module (Dart code compiled to native)
        .binaryTarget(
            name: "App",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/App.xcframework.zip",
            checksum: "9801134ebae50a608a053a4a52d3d406b0b3a9357ff3ae44e6351d4683bf73c4"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/Flutter.xcframework.zip",
            checksum: "768a0ed2bf1506981703e99a4f59411cc83ac99b75df1e585f04df9266c75c4b"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/connectivity_plus.xcframework.zip",
            checksum: "c61981b1a70a35638d21f79ed649721234321fc6df681236c5c922f2bf2613c5"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/device_info_plus.xcframework.zip",
            checksum: "e3b2168731469705f03879070c809786c490c0c236169cb5ca60411173e723fe"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "381fb73737e47a4e2683f36fac8fffa8315e094edc142d561268be94f2c7e06e"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/flutter_local_notifications.xcframework.zip",
            checksum: "761937ca36017689bf2a1d1b7abd8f27dce209ab2af70b41302e5f0bee99aa41"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/flutter_native_timezone_latest.xcframework.zip",
            checksum: "94d732a1e46d9b8da80126d1c905b4dd2dfb8d2ef059953f409f467907a3bbcf"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/flutter_secure_storage.xcframework.zip",
            checksum: "96379ba7ff8580683f8a155268a2c7e00515c2902ba3deea72065ede34209004"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/geolocator_apple.xcframework.zip",
            checksum: "729070360a401a85636ecfa37c0a4a39f8096dbb6d4a8980d5310e413dba4a48"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/image_cropper.xcframework.zip",
            checksum: "ad996eb9ffa5e2608d331d54eb3a101b99956550e430b45b85abbb67d15a9adf"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/image_picker_ios.xcframework.zip",
            checksum: "64d2af7294283055fe76cb64d231deff8a6cfa91e9e1efa10467e6d4c80405c2"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/mapbox_maps_flutter.xcframework.zip",
            checksum: "816e9c5286ed3566bb04abd528bde77dc190b0f0d300a6f673b216f07b940bcb"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/MapboxCommon.xcframework.zip",
            checksum: "2d2cb9ee0bca39b976912ba74caabc226f1db3db6d55da04e406d81e5da2b9ad"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/MapboxCoreMaps.xcframework.zip",
            checksum: "9b0a74de9b0cb10aa6d6cce3932a1d6ddcdd3035519b5782b7dd4d703598715c"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/MapboxMaps.xcframework.zip",
            checksum: "0b86234803e025747df3cd4028a5d6379d4593d79b2bc9b542ee7b28bf906338"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/NordicDFU.xcframework.zip",
            checksum: "5ef6aa2c59d7b79ff285ee547a17a804bf7fa732b87c6d463437c6e8f3330d79"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/package_info_plus.xcframework.zip",
            checksum: "abdd8afc37e68fe5cfa79a660dedb18f1f293abfd75ad8daacdd0a7127350855"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/path_provider_foundation.xcframework.zip",
            checksum: "3f077bb3217e3745363ecdd44c2163786586a58b67da11731aab960fc390d8fc"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/permission_handler_apple.xcframework.zip",
            checksum: "82719b9e34fa8e3078c03b10285892a669fda60d8643ea97dd3bec7801b80522"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/share_plus.xcframework.zip",
            checksum: "8ee75ab4dfb7a00791082287a30c451f128a0d6108fe9e96a90dab1992345ae3"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/shared_preferences_foundation.xcframework.zip",
            checksum: "8f45fab95b11ebcf2827b2b4e9bbc5469662c9c69f0c5210b2f3353a255f5430"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/sqflite_darwin.xcframework.zip",
            checksum: "ad2067076c1285c6be5e8c6c50da4d80617d5de7f626b4dee6cc8b2dfa9121c0"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/TOCropViewController.xcframework.zip",
            checksum: "a436c26df6cfe5b56514b7bced66fa7c775130d79ddff72cd1018fa531011d6d"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/Turf.xcframework.zip",
            checksum: "c58268f47f875d088e96e5f637ef1eb81dc9f03d7b379faaf3496698721fccc5"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/url_launcher_ios.xcframework.zip",
            checksum: "415bd2e4d38df178de4243b65a1907527dc0a7be0da3d2adf988b87f063f7135"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/video_player_avfoundation.xcframework.zip",
            checksum: "ba2747c599180aae8e398d6c0cbbab0b31bb98ec3567521f8cbe9e812df7acb1"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/wakelock_plus.xcframework.zip",
            checksum: "8f872c7650da69a62a67e721983e4b6181f61bbdc8191929a548ec89851d10de"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.2/ZIPFoundation.xcframework.zip",
            checksum: "07e70caaeebcf7d5d148cdda095e8be6ff7232622d2a4e28b137ba5d6c712b3c"
        )
    ]
)
