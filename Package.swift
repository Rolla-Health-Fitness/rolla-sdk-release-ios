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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/App.xcframework.zip",
            checksum: "2269c3047f617dd279f30365b8a42f28ae839de259339a82246b9d274440d83d"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/Flutter.xcframework.zip",
            checksum: "3e93b5500b11cd36518a412eb0c1a22342c0f6f0a112d6b12324beb0bf8cda09"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/connectivity_plus.xcframework.zip",
            checksum: "3e739b527eeae74630d9194d89b61c19d15b155da2dc24e138e19cdd2e1123a2"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/device_info_plus.xcframework.zip",
            checksum: "0f05a98d0d09dce0af6af4f8d59c1b32e1f36882a76f6940b81bdc391b669f0f"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "860db5fab0bcc81464e8280e711deff8b95769f2c1ba1f39e9bfa0fff54a217a"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/flutter_local_notifications.xcframework.zip",
            checksum: "22dd7b62d78d8e14dd330e53a7dabcd49fd849ec8243f988a25606237e46660b"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/flutter_native_timezone_latest.xcframework.zip",
            checksum: "328b3dcead9f38e44f4e762f29462996ad121e51aa19d335b13535de4125830b"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/flutter_secure_storage.xcframework.zip",
            checksum: "f8477143c51d704d85a857a35038c67c09810fb9dc3633fe6d7243fa11dab19f"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/geolocator_apple.xcframework.zip",
            checksum: "e2f7ad1f8b2c3a36a6cdc8fffbbf8425cc21c3ff9bb8f85dd5b4f4c0f7813afd"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/image_cropper.xcframework.zip",
            checksum: "460cb65d45e286f022814a10ef9a50fc8cdb2a01cdefbc7d8b68118a362c37f9"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/image_picker_ios.xcframework.zip",
            checksum: "89e1fc024e561e89f6ae82effb81ebf05777191e3d4a4091379bd7082fbdb87d"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/mapbox_maps_flutter.xcframework.zip",
            checksum: "daac95b0cfea290db64a88c2ca114b89ec1db2c83350e30786b2d6a702497196"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/MapboxCommon.xcframework.zip",
            checksum: "4c183bd90409ea9c4fbc30b369bb68d106a445f7d550b99f0f9671c536fc4929"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/MapboxCoreMaps.xcframework.zip",
            checksum: "1cb0468397ce254cfaf8cabfda78456f14d827ecbfeaed98853582dc1da7f461"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/MapboxMaps.xcframework.zip",
            checksum: "2d2afb5861f1f975ac0b47982495661f2e7b518f3e57dc736660fd1992f8bfe2"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/NordicDFU.xcframework.zip",
            checksum: "145fa1a1ab2edbfa5b3ac4cc03f6b6234ae5e9b90aa8a4e965790b955c8313c3"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/package_info_plus.xcframework.zip",
            checksum: "636781aef5225305993c97425076ca50ad2cfebca0607bfa386acfe2d54f031d"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/path_provider_foundation.xcframework.zip",
            checksum: "c55459bd48d5de3c56e94d53183493d3985b7fba969a4a9f81f4c4c882fb7a4a"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/permission_handler_apple.xcframework.zip",
            checksum: "1454d8dbd794532d5d46a935f7d6da2ff4819624d11c3840f4d60e2b3f0d7c6f"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/share_plus.xcframework.zip",
            checksum: "8fd8c9757bf06cd83b8fc2d9aac75b445969ac4a4a112bb53b0223bb30a9c206"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/shared_preferences_foundation.xcframework.zip",
            checksum: "255e7b090c57d732b4d0443a06c2d6e3fa65486d508e9a8dd480df2e99422018"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/sqflite_darwin.xcframework.zip",
            checksum: "9769b43c4f462684212d79825da1cb53380f0eb6067dcd74fe3bddf44881c2bf"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/TOCropViewController.xcframework.zip",
            checksum: "2e598bbccaa407b9e8101839bf4bf25a87bd9a70ccacc8b5bbf0e748153d878f"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/Turf.xcframework.zip",
            checksum: "3b14a78824eca4bd67bab165eac967445c88db4d89797571eaa447828578e635"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/url_launcher_ios.xcframework.zip",
            checksum: "c9bee927e0290dbf7ac7a99514db48369ccbc24dd02569fd2c3103aa1db54ac5"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/video_player_avfoundation.xcframework.zip",
            checksum: "672babb28abe5bb3af84767cf2e27750ced2f0d16cd930af03579e8b6b403563"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/wakelock_plus.xcframework.zip",
            checksum: "51bd50d70e21d62dbf3040ebee805bd9c2757b007309e7bfaf16757608ee6ae3"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.1/ZIPFoundation.xcframework.zip",
            checksum: "e7c2e46d44ae27f72ac7d54cc6662627e12ffcd8613f87a332ed766acc2b9fc1"
        )
    ]
)
