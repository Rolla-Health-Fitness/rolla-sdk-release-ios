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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/App.xcframework.zip",
            checksum: "6958ecda3581f76fbbf9fd5b73793af8a6a4b94530218ed9b3dba3957322cab9"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/Flutter.xcframework.zip",
            checksum: "dbc3234acbf50601d82becd35b503e0841a89b482ce483ce84599b06d803c104"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/apple_health.xcframework.zip",
            checksum: "1cb89574ae0814ee3c9ecf1d10105cb4045d027929ca150f0e0baaf07582d112"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/connectivity_plus.xcframework.zip",
            checksum: "0944477ceb3bd7c99bcba0debbef6b5847bd19d5084441e2b2ded3acf2b8ce80"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/device_info_plus.xcframework.zip",
            checksum: "95e304df317fa6f839c1c1611da836a7c1482a521a43b59c763eb43cd9e26226"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "2492bf2e330758e9af67763d0c02fbadacc6c63b866c4fedcdf00a03b2a35cc7"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/flutter_local_notifications.xcframework.zip",
            checksum: "c833fc71f90dba6756ee3aab77959f1a625ccf92865a6a2d60b5236be086abf4"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/flutter_native_timezone_latest.xcframework.zip",
            checksum: "84611aae8d7eb1faba8c715e3a81c44df07ce86f08e91b767d85a461d81a7664"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/flutter_secure_storage.xcframework.zip",
            checksum: "2e6e6408112054b136dc32263b59dd58b0a76601c4fe19351e9b1331623df6cf"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/geolocator_apple.xcframework.zip",
            checksum: "8b97f9b22f6f390f7a72f0aa018be0d4b3851c0ffebe93d6d7f457f103629efa"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/image_cropper.xcframework.zip",
            checksum: "de7b9424d2799f0d8bbf0992bc31204d6300127ffcaa2cd3f05fb316dcf9ff70"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/image_picker_ios.xcframework.zip",
            checksum: "945b770f2dd24695629695081b717039ba439c7010bf70fbff70af03df6f7f11"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/mapbox_maps_flutter.xcframework.zip",
            checksum: "6e8cc209a1535982f87a717d65297d1d0d3a6f28600b94ba3b50036f34479581"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/MapboxCommon.xcframework.zip",
            checksum: "3642f2d3497f755f6b8a80c4e944ce2a872fefeffed6ce67b546f63044ca8bbb"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/MapboxCoreMaps.xcframework.zip",
            checksum: "9a8ff1408e7993e0fe58d25b25f0d930de594ead1d773f7fe21bff9bbf72b1d4"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/MapboxMaps.xcframework.zip",
            checksum: "8a2e2505cbf1a86c1436314096fc310fd4ec26461104b1eaae38a767629e67f5"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/NordicDFU.xcframework.zip",
            checksum: "f66394eab55ec89f16478469a4afb2930b37ea48efa01d02ae1c4351e3b54165"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/package_info_plus.xcframework.zip",
            checksum: "22e5372ef5397d8b91353d4079ef6a02512e25c54e7f8ddddacba2b1b58642f5"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/path_provider_foundation.xcframework.zip",
            checksum: "a82ed79d675c4a889041df34cdecf88bf8c3906deb0267328cb2f674c4790fff"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/permission_handler_apple.xcframework.zip",
            checksum: "15137967ead40933e412acd76adbb6286b73525f52f5d78dbcd683977ca9a456"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/share_plus.xcframework.zip",
            checksum: "1f3b2372f02f2f76c67c8011876b141a828fb2ee569c6f816233be52986c980b"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/shared_preferences_foundation.xcframework.zip",
            checksum: "6215346b86a6eea63d5ca3b4d81dcbc9377b27e3ef0f5f143d95ec5ef0f81a18"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/sqflite_darwin.xcframework.zip",
            checksum: "4151a207ed2e09162ff2e41ccbb1af779d3e0dc20ffa173d06f7a393c05b0bbb"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/TOCropViewController.xcframework.zip",
            checksum: "147fd57cf9945c7066e68e077f754fc87f9e85d78537c6d6e37b1e2385582df3"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/Turf.xcframework.zip",
            checksum: "adddcd97148cdf3069478ce38a41cbaae9d870808207e87a414d2b9f9c5f8419"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/url_launcher_ios.xcframework.zip",
            checksum: "d603dea35421ee5af8024a34f3f85494ef8ac97f248f043cbb4abd3823046e67"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/video_player_avfoundation.xcframework.zip",
            checksum: "1da3432298c30d900e7304fdfdef4611aef15d88a6614f038e1a8a405e77a79a"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/wakelock_plus.xcframework.zip",
            checksum: "7a2a672e515696e19d942c7d413edfcd5d41ec32b0f414c954810ca358b5d4f5"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.7/ZIPFoundation.xcframework.zip",
            checksum: "32d586cb0947bfce0c5a2f581f1e849cb67165c1c033315d15bcf7cc23ad522a"
        )
    ]
)
