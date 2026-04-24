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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/App.xcframework.zip",
            checksum: "2d213f6b68d65c1dc0bdd92e08a7365343c7ea0adcab17a2bd7fedd86f9deea9"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/Flutter.xcframework.zip",
            checksum: "2586c8c018f7f79dd2fcbd1d17d267d3eedba1570d6a7ca287c8cee6294993ce"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/apple_health.xcframework.zip",
            checksum: "e7d95bb8f5d8fa8d5414f104c711daa111227cb021cc810ea04e8eeda6987d6f"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/connectivity_plus.xcframework.zip",
            checksum: "39f0b00020a68d136edfb07bad2a528f4aa003a2b000cd7d0816f063faada3df"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/device_info_plus.xcframework.zip",
            checksum: "2cdcef5ccbcb237c07e6d4f790eb5fb420eaa23a3aff2d0f29d7c515eefe870b"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "594441d6299d4940741e39b853fc02bbcfbc469577709cbf93b9fd64e806f795"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/flutter_local_notifications.xcframework.zip",
            checksum: "afe101d1dd1af0e2f38ad1fcbfea0a985eee5559f61c8df026aa7577105ba099"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/flutter_native_timezone_latest.xcframework.zip",
            checksum: "2c681d65b028a6b4a779cecabcdbda115ece5ec75dd9e3a2e9d3f26f12dd7e34"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/flutter_secure_storage.xcframework.zip",
            checksum: "2e488a9f45879199d7ed682b353ea2c850337d6d64d2993c6ebaf9e2674cfbb5"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/geolocator_apple.xcframework.zip",
            checksum: "f855293a4a1074a0e8807806fd4e90fd281ed60360bdc6db75ee625c6a356369"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/image_cropper.xcframework.zip",
            checksum: "622f035b179d10eb8ce51995b37add0ea4b337b65c506a66b29e2a0ac1c1fece"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/image_picker_ios.xcframework.zip",
            checksum: "32b4287bf584e32eafb6dd39add288245a5c379a82ccdc13b6ce5fa9b68b63f8"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/mapbox_maps_flutter.xcframework.zip",
            checksum: "4b28015f69c32850b2263125e5e24990fdb7e5b5cf14821f3613e7a1a44801e7"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/MapboxCommon.xcframework.zip",
            checksum: "8b5be95742947e587f9275ff88bb2511345a4a634679480ff5078c89b4c38bc2"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/MapboxCoreMaps.xcframework.zip",
            checksum: "1622ec049eb317a8380ccf6d1a49f4278d266354ee6205e86058bba4f5ed3b91"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/MapboxMaps.xcframework.zip",
            checksum: "1290e15b3277a81463af2fd1ec3b733458ae3c0fc7f7166bbed2c0bcd55874a3"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/NordicDFU.xcframework.zip",
            checksum: "af7d6a51d4998147a55136820f6340c2a36fbd02b9e39857240a8b53c09ab448"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/package_info_plus.xcframework.zip",
            checksum: "8a4838f069578f1cfb7f6cd517536b9a168c8be29dcac90d4cca8bbc365a517a"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/path_provider_foundation.xcframework.zip",
            checksum: "cd3daafdf93000bc7b0a58f4c32a8f2e5e26819c6243ae480e373ae6589687ee"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/permission_handler_apple.xcframework.zip",
            checksum: "fce211a740ebc7d1dac18934ecb6d9bec294da53063aecb6f96b66ad0513733e"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/share_plus.xcframework.zip",
            checksum: "0853f0407568302cf2be9d5276bb7f0541fd9db1f0e15e9df1464b390a6a8d1c"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/shared_preferences_foundation.xcframework.zip",
            checksum: "7a780444484ea8cc37e13c95a2ab4a92c1ca915f24aa079bb27cb4131deff99e"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/sqflite_darwin.xcframework.zip",
            checksum: "38b4182dd53100907d3e8f09ede48b92b01655220bdd97a8716b445fd8663d81"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/TOCropViewController.xcframework.zip",
            checksum: "01c26c567ad24de004d7c2bb5cbce42642c683c6bdde73712e78648220468e1f"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/Turf.xcframework.zip",
            checksum: "a69737c38cca1d383cb3f2e8ba4a13d84e18eb4115b84249e0abfab9bf01d48b"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/url_launcher_ios.xcframework.zip",
            checksum: "a281952f7a05e51a9159b8cc2fe3965d2f8399d06bff73638a77319623ddbae8"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/video_player_avfoundation.xcframework.zip",
            checksum: "9181d89919e011ade09262fe03cbe268083f9911f9495608a21b1bce14675094"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/wakelock_plus.xcframework.zip",
            checksum: "51b6c259f1cd0d06ed0829bf076805a702208989be605c98ddf18691c4e6729c"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.9/ZIPFoundation.xcframework.zip",
            checksum: "941cbff94e6bc330d7f934bd5275f2d7ab885667966063c814a652a3ba1d93fe"
        )
    ]
)
