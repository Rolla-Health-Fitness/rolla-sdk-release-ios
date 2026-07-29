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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/App.xcframework.zip",
            checksum: "d71b54b77be3a29cafde314e421328df943f9516cc1ccebc867a5e783d4184cb"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/Flutter.xcframework.zip",
            checksum: "b96e966f4fb69f2c2d53175e3463480bc276a0a7e05ac741e952763f49300c34"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/connectivity_plus.xcframework.zip",
            checksum: "1b64fe72aa8104106b4b20e103f47d99efda9e9888a72029727b432f225c0e2a"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/device_info_plus.xcframework.zip",
            checksum: "f953aba9812dcfb8b110840a0de828c89e8b68208b26fdf859e38476eacc2688"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "96ef85dcf783ec4a324be97ee0913a1f0314c400aea539872a8c8e78d6a995a9"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/flutter_local_notifications.xcframework.zip",
            checksum: "41c33cf58dc06e01f3d08f71e0750f42ea7f3a243971769c9a6b41b382ebb863"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/flutter_native_timezone_latest.xcframework.zip",
            checksum: "8aa912f3fcab04ebed44c362d7aa410f4c4c36c4058c6a22a73c1870bc452dee"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/flutter_secure_storage.xcframework.zip",
            checksum: "912afee5e701a22ff2e349d0951b472cf0c3a51a6ba7f8a32b1e920ef3b8d65b"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/geolocator_apple.xcframework.zip",
            checksum: "f2f2c9352bbd2f0d1683b1fe542d01a5f006a4e1c2652ce45e7299e2d2ad1226"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/health.xcframework.zip",
            checksum: "c765b511ea82b0c2545cfe359087ce1507bdc213ea6bf7119110cc7406e7bbe0"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/image_cropper.xcframework.zip",
            checksum: "09b0d7c2cfe8f9ec3460f4d698a4d6ad92e1ce0654bf5eaa92caf84b58be9f9c"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/image_picker_ios.xcframework.zip",
            checksum: "c559dcaef7c2924301138c11de366740e2baa5fb4f95f35c9d34571ba284da79"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/mapbox_maps_flutter.xcframework.zip",
            checksum: "5a87ecee4d44ce4f87fc60acc56ae3e7c9feb31d2aa82ce199241b78599634e0"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/MapboxCommon.xcframework.zip",
            checksum: "f82a4817632e46c82508122b2cdc646c91a2682ca228ae0a4f16149a3c6c41fe"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/MapboxCoreMaps.xcframework.zip",
            checksum: "9bd52558c8c6b65147cee478cbcfb8a50359482d1c36696555b0527e27578ea6"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/MapboxMaps.xcframework.zip",
            checksum: "ef7af9ea6d4bea1351b3273e69ab9c63fc36a680edda8183db207e4a8fa3c467"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/NordicDFU.xcframework.zip",
            checksum: "c0567e592da4c65b0b0193111f35cbc4702e0b532d9166b2ea55cc3ddc1585bc"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/package_info_plus.xcframework.zip",
            checksum: "78a421600bcf3385e22a57d78bd86143669ef2fe03cd631409d492149ca6ca38"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/path_provider_foundation.xcframework.zip",
            checksum: "cf3d724ff5e6da4bfd3293adcc833f59ed1833f26c823bf5a26e2e6634e34e14"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/permission_handler_apple.xcframework.zip",
            checksum: "9a11b202c0b962780e2e75de82f73b9ef272250f0fa84c1144b001ffa5b6400a"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/share_plus.xcframework.zip",
            checksum: "f9b78288591239534bffced396876ed1d2b6d149d047f1e3ec35e9167d2bd653"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/shared_preferences_foundation.xcframework.zip",
            checksum: "e96ae085d37e1a959cd609ff3e12b0ee422412bfc8fddf3218c03223bd00dbfb"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/sqflite_darwin.xcframework.zip",
            checksum: "7f297601d8c90dcbeb3419bd8e07494b89e4b3c277cc0b83f629a7074c0ab52b"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/TOCropViewController.xcframework.zip",
            checksum: "010f69addd682fe84ab910c8cd19ddec86f7c63b6d14b81b768d151b84750091"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/Turf.xcframework.zip",
            checksum: "48f86a28ef6c5c7849e01a2c1384d751bcb7935360fb23123d0df70aed0e4906"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/url_launcher_ios.xcframework.zip",
            checksum: "be4e269032be45ff77bb4168ff992a802bd0f3ef545a47d605e3a2810f67bd03"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/video_player_avfoundation.xcframework.zip",
            checksum: "2d112b98843b031509197cbcdd470168ef54a1477297ac7e5f802b0bf2c00a35"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/wakelock_plus.xcframework.zip",
            checksum: "3d65b07503dcc8603689e9dd4b4bc490fa6a724913785ac70377ce2ddaed7a24"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.13/ZIPFoundation.xcframework.zip",
            checksum: "8bd1a9142574a18ebd1c75b84c348845c46990c35ada6a824441d2927e51284b"
        )
    ]
)
