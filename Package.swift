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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/App.xcframework.zip",
            checksum: "a1198428cdbd5652982b73f72087423488844bb7b3ba9fd15d6793990e3e9cd3"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/Flutter.xcframework.zip",
            checksum: "94ef5a9f560b05e64fdd132b504cfb8479aaa0151428003039de2d728ba84d89"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/apple_health.xcframework.zip",
            checksum: "73b6acfc041055b607c04d258a2e384d34e385d90d274182fc2dcd0b40d96d73"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/connectivity_plus.xcframework.zip",
            checksum: "8880b1e1c3af521a75c850c4aac5700a96e8504bf7982a418a94654e486199ef"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/device_info_plus.xcframework.zip",
            checksum: "905ab1c4c878ce49fb4178eb6c5db9017f74d88241b44740a779b90f19c269c0"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "89ab9534abf2e558b16c37659f253e6a556980578bdf7e7a0b3de8b421ee2ce3"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/flutter_local_notifications.xcframework.zip",
            checksum: "915d54fd15b459ad9e79e6923d41ee9156ffdbd47129d1ad478ff1fe9b4c30c7"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/flutter_native_timezone_latest.xcframework.zip",
            checksum: "21789aa99038c0f639ada136ef58665b9897e47ee054d2d4c8ddf196f7ac7298"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/flutter_secure_storage.xcframework.zip",
            checksum: "9699ed7569c23f9c194313b2ed1ded0bee0483a63c881adee01888ee261f19ab"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/geolocator_apple.xcframework.zip",
            checksum: "ae9f3c349276d5db3ef51a696c2eef4df55faaf091496fa069081d8b7134b41b"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/image_cropper.xcframework.zip",
            checksum: "145bb06c54dbaa4fae66db3afa4b229432dab07c779ee3ca4d82188251597879"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/image_picker_ios.xcframework.zip",
            checksum: "688063380b1686595a8241ea5e7ea4e767ca73e80ee0f9ae0054613223495765"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/mapbox_maps_flutter.xcframework.zip",
            checksum: "51370474083ee6b8d244c4766aca395f4565436524f1bb4863feb4bf4723342a"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/MapboxCommon.xcframework.zip",
            checksum: "21250ae74a6e7e960693e519e09352f45c7a2c863c0f53ebb96bc986f2bbf576"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/MapboxCoreMaps.xcframework.zip",
            checksum: "6c660570e300400e8266acbc6d76f594f5fe7138078b1ee9352fe3f236eb2930"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/MapboxMaps.xcframework.zip",
            checksum: "cd249a1e4aff0d5dc7c1ed15fb73731d19cc888f3b88a46e232a656c4921510b"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/NordicDFU.xcframework.zip",
            checksum: "65e8ec7a9c36b365d041b438eab36f35ebf58db41a8d9b158529ec8c15652255"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/package_info_plus.xcframework.zip",
            checksum: "392f16e74e3b8a9d5b3f5bed623467c6b4b1b392447e7d6e55e38008bbbcfac8"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/path_provider_foundation.xcframework.zip",
            checksum: "ee80f96d3a91004c5972915e38d68d4948dd5598e104c6b9b10ff9657647e7d6"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/permission_handler_apple.xcframework.zip",
            checksum: "6e22a241b71b672470ab089d8662326c9118f43e30ec59c72fef3c5890f7d9f1"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/share_plus.xcframework.zip",
            checksum: "8416bd229ce598f581ba9e7b93977e7c52c3f22e80ddc642288e8afc18ea0793"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/shared_preferences_foundation.xcframework.zip",
            checksum: "626dac19cdc37f9ba1dcdb2bd7873150f5621da86ce8840b367e4a230c05a4a9"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/sqflite_darwin.xcframework.zip",
            checksum: "6a66e4c89b8c7ec79c0a18c7f6a1357f59ecc90d925e644714e62b85aa82c847"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/TOCropViewController.xcframework.zip",
            checksum: "43d3ce03b08e72543e67040ad623a5442d77bb945bb187d8b8985dfd9baf1046"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/Turf.xcframework.zip",
            checksum: "27d049b1e24ed18587e7ae079fea25f69ef4801acbefc142cb61f0b3cd225fd4"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/url_launcher_ios.xcframework.zip",
            checksum: "32717331b32d851a2ee268d0bf3a30205c77701cb4a68e20ac36cdf6fd7fec68"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/video_player_avfoundation.xcframework.zip",
            checksum: "4e09041517681f31967a0ac4d0a013d96b6ad0444fed3ad95b4b90cef2733d45"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/wakelock_plus.xcframework.zip",
            checksum: "cf07b536de234294c28621e8d11868482e1d28103b2c909d2ec7fc66d6243fd9"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.4/ZIPFoundation.xcframework.zip",
            checksum: "3ec5d2fffba092fbec56abd3fe69c7bc8e04db243d6b93cf566739b3ea1e686d"
        )
    ]
)
