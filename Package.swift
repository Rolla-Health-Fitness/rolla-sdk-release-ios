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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/App.xcframework.zip",
            checksum: "fda57c80c5db12d9fcb3862a59d2eee90ba0d16a90b555827cd6719e5c15bce0"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/Flutter.xcframework.zip",
            checksum: "1471eddb3d475623587f750342d3e964131b8946a4f534a2f2dafd26cd5a6bce"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/connectivity_plus.xcframework.zip",
            checksum: "001a244130aabdfe5c6802c0cfa8c5967365811c199598f09987a6003a7b7bec"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/device_info_plus.xcframework.zip",
            checksum: "89d200e17fa05ddec32be56b36fa7b5e33e7b940fecf75718aa3d1a25ea44342"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "78d92a5e1ddc817a89b314a2b3aebae803337fbe0bf5a70eb4ab46eca9d9af27"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/flutter_local_notifications.xcframework.zip",
            checksum: "f041fb93dd3254ee534aa543a815a1e375764e65ff5a3194b67894a35767fa30"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/flutter_native_timezone_latest.xcframework.zip",
            checksum: "d350bcd876278755b886e81578a837cda0ef20aa38a5898ce9720624786d1e93"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/flutter_secure_storage.xcframework.zip",
            checksum: "198c4b16e3a89a48add1c072914afdf34ee18a38c1f0ab1404108ece459f05e1"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/geolocator_apple.xcframework.zip",
            checksum: "3e7c27763d57035df64ca4ce2baa8e93d120441dee25efd6217b802bfcee65b7"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/image_cropper.xcframework.zip",
            checksum: "5748f0665191eff6a2cbb2cd0ca24a69c9ce8f1f2e3a6c82008be79e99570223"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/image_picker_ios.xcframework.zip",
            checksum: "1580b670cdadd25e8772223fb687589ae3862adad1ca92e0a7b13ead2fe4a1a4"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/mapbox_maps_flutter.xcframework.zip",
            checksum: "5e43c719cb7a1cb298114a3dd306408f2825751d8beb178eb1934bd4c630be87"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/MapboxCommon.xcframework.zip",
            checksum: "daf8ce169d50c0d421a1ade4f775ece8116a1c4dbaa64391a7ce10868087a700"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/MapboxCoreMaps.xcframework.zip",
            checksum: "3840e4f0bb025abaeb72eabbc520310dc0ea597bfa63bcae551a0a77c4c583b7"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/MapboxMaps.xcframework.zip",
            checksum: "fbed95840371b1b0dbb0c4c3d6534364ff2877f4736e41fe11e056c4a1681110"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/NordicDFU.xcframework.zip",
            checksum: "3bf500543f0f948f7ec5c514a3e0c97197ba159ec59fc1ae66d04e41720f5140"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/package_info_plus.xcframework.zip",
            checksum: "e9356e0c381cd0418da31cb33df609a45ef5fe87d03a8328fa4b35c55543f949"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/path_provider_foundation.xcframework.zip",
            checksum: "4aa49f0b3612771cc61a8db796941cea66eb76c0f4edc0d245122073982f7334"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/permission_handler_apple.xcframework.zip",
            checksum: "a4e41cbd6c309f1504e2f2c80fab40d83b48ddbc04ce9c0bebaeea72848e7fa2"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/share_plus.xcframework.zip",
            checksum: "eb4a6f6615507cf98a068dbc53a09c3d853ea0603f4147f1ef0539fa802077b7"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/shared_preferences_foundation.xcframework.zip",
            checksum: "7648066500e64e31455846f2c093df153a163525c89484b6495b97c147f80c08"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/sqflite_darwin.xcframework.zip",
            checksum: "5dcaa813bb84081c9fa710cb633bb5fb38715667dd3e903ede8bd01ac180871d"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/TOCropViewController.xcframework.zip",
            checksum: "21fe32835de2843aa6ec8685f7693c5db166755d68fe994032e0826e85a95171"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/Turf.xcframework.zip",
            checksum: "ded1c49ef94d61003a5a9b034d727e6d3cdb05ac00c7986d6a15fa4d971138d0"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/url_launcher_ios.xcframework.zip",
            checksum: "fa114159a547bf68d4c09cc52f3091adc7d3efc915bd567da9d0c104ca6115d1"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/video_player_avfoundation.xcframework.zip",
            checksum: "f998b066459652dbe44492c1fa9620b08786773cb353983fa4efd7dd74592579"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/wakelock_plus.xcframework.zip",
            checksum: "b94a1aa378955276e4f22fc61a6b256dfef0ef4db3bc10f0fbd6ba76c1a32190"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.0/ZIPFoundation.xcframework.zip",
            checksum: "d9f31330ee28696532e188b0bd0ce450535152c52438388726cf32f37f163ded"
        )
    ]
)
