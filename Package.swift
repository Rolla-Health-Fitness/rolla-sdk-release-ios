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
            dependencies: ["Flutter", "apple_health", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "health", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "FlutterPluginRegistrant",
            publicHeadersPath: "."
        ),

        // Swift wrapper API
        .target(
            name: "RollaSDK",
            dependencies: ["FlutterPluginRegistrant", "App", "Flutter", "apple_health", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "geolocator_apple", "health", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "Sources"
        ),

        // Flutter module (Dart code compiled to native)
        .binaryTarget(
            name: "App",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/App.xcframework.zip",
            checksum: "d613951ebda6983f30b5a9531e0c948a04cd640d63fd9e6f31b282e5b05a3ab9"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/Flutter.xcframework.zip",
            checksum: "bbd8232781645e4e07424018d8eded84dbe64949245a52e5abb10c925bb36db7"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/apple_health.xcframework.zip",
            checksum: "ac50cb64061b68bfad7bb4e30f7de81341f0a56d6d508e47d73776da78f7d2aa"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/connectivity_plus.xcframework.zip",
            checksum: "e522a6e296c596eaf1dd7c8efb76b900c311996274c43208a1995a499fa8ca76"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/device_info_plus.xcframework.zip",
            checksum: "72d377be389235fc7ae58fe7d24757aa75b8eeb3c3936ab2d216e6fb1bcaee46"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "4b2da4d27f671f5a48d39d8461fa6ad7e54f319a886266d233173a579b0c85b2"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/flutter_local_notifications.xcframework.zip",
            checksum: "7a6f301dfc36243f6386c7434734a38f7e0ede28839f43dfad6942be3fb8bfcf"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/flutter_native_timezone_latest.xcframework.zip",
            checksum: "cc5bb1778155470c4edc8ddd7d4e4544f378544c2549ef25e7697a9e90fb1585"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/flutter_secure_storage.xcframework.zip",
            checksum: "bf556b159f251e7f14ee587e8bbb08ffcd8ffdf896849568c5da58c568349196"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/geolocator_apple.xcframework.zip",
            checksum: "0975225da5cf53549c12678f0246a9980bd0c64f87373c62c8d3b692aa376a3f"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/health.xcframework.zip",
            checksum: "d9648fcb1471f2a0c281631fef12dd10aa121f2cd84cabd52d978cb7d8dd7c72"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/image_cropper.xcframework.zip",
            checksum: "1fb0b8997cdbddb2d92017e86f6c971832e70bd6ccd3bdf7dae089902d6fcaab"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/image_picker_ios.xcframework.zip",
            checksum: "681aedc93d33d29b0ae777ae960b0bdd114b1477ea7f1b5a752e5ff71bece3d2"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/mapbox_maps_flutter.xcframework.zip",
            checksum: "27e88f95d521944c5d47280e32c43cfe1c5242c0f2967f500a133090cbd7911c"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/MapboxCommon.xcframework.zip",
            checksum: "cb8475f9d97a93ac0a15b81f8964e07528cb16f7d047cba91686c8435732e9b9"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/MapboxCoreMaps.xcframework.zip",
            checksum: "143bddea629846d823f903574eb66daa2837a2486a644c25abaacf8a98e89102"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/MapboxMaps.xcframework.zip",
            checksum: "123a572867bdcd832f36fa4439af6d66334b4dfb14a14c882fdb1462a130e468"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/NordicDFU.xcframework.zip",
            checksum: "02b3f7dd91efa192158c4b6ee932db751111615f067c6f7bb21cd561a4cac1c0"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/package_info_plus.xcframework.zip",
            checksum: "6d795bf0241a1b382c6d1376a1bbfa2f938372855556a393d1b587a9e5867eed"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/path_provider_foundation.xcframework.zip",
            checksum: "f21bd7670fa32f0478720e1212a51e908de517be418726a89d007974307be87a"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/permission_handler_apple.xcframework.zip",
            checksum: "530fc063394cae5f0c7feaf7f9d5a20d486bbcab0c42f66901b4b7f0db4191dd"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/share_plus.xcframework.zip",
            checksum: "bf1dd7e70449009811997dca5b2f424045dc63a631de21129dee8919454a132d"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/shared_preferences_foundation.xcframework.zip",
            checksum: "327dad3f58fa20e3a16134ffa753fa25b731419d3690ff47ce378471d9957f14"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/sqflite_darwin.xcframework.zip",
            checksum: "77867b44a96de71f1bde60c84d28659404df4b4e7f12ae0a3ecfa20062954192"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/TOCropViewController.xcframework.zip",
            checksum: "385e603bb779990525aecf951bacf694a65234b54f84666f08afc3f17309cfe5"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/Turf.xcframework.zip",
            checksum: "77c80237a99730a86d56cab783fb5a16f528cf3f68462961e9f22c76f265e1fc"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/url_launcher_ios.xcframework.zip",
            checksum: "db189e221962a3a9edfe5792af9c6dac783918c6313baa02f0de771762c33308"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/video_player_avfoundation.xcframework.zip",
            checksum: "4f53360ec2c137187998e9a88c3510634fa8f925be904f970245f9a3d18cdfde"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/wakelock_plus.xcframework.zip",
            checksum: "3f565347c2d07b45486e15d95fbcf6dd7df43a50d1d997a8b0ce10dcaa526bef"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.10/ZIPFoundation.xcframework.zip",
            checksum: "4659ac8ea5693f70dcc0a89a9f113d75d77198bbae984eda263efa290435c294"
        )
    ]
)
