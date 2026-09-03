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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/App.xcframework.zip",
            checksum: "2a3984df85c5e3a25d1a82a401a22f37367e2bb139dc6cbc4f1e3c20ac723bc5"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/Flutter.xcframework.zip",
            checksum: "2b6aef4fc99c60bfd27c526af2d3b05e32afa055e9f59b20567dbdef8ea43be3"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/connectivity_plus.xcframework.zip",
            checksum: "d043d5ddc62f2a2bc9a399c5d1b97ef4fac8dd1baccefd8c3f106cbec5a790cf"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/device_info_plus.xcframework.zip",
            checksum: "20436d26dc15e3f711c090f4696bcbe12713d4fe7a4f5857ea8931c16b344d32"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "c71d8118f527263baf0a7132086f852faaafb6f1fc623a407b1d913e55d5ef84"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/flutter_local_notifications.xcframework.zip",
            checksum: "5d5c8c3b9b4c135e7dca6352f45373b3fa5672966eb64361a4ea0f93c6ddf834"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/flutter_native_timezone_latest.xcframework.zip",
            checksum: "5a3df020e4577ae38fc6508aa3c7aaabc7217478f6e0352ee9e30573168ffaa1"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/flutter_secure_storage.xcframework.zip",
            checksum: "4ec38e4162298e4b46b2e47a6e0e9172b8bb5ee2cb26bd4672cbe7a9547645a6"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/geolocator_apple.xcframework.zip",
            checksum: "5d55f7066e04e022c7b92fbc5ab7ea3ffd4ac4511642be03006f38cef80e12cd"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/health.xcframework.zip",
            checksum: "b29bb6dc7e29c8e471a4c5bf4cf60ed51fa37cd73c653f59c74c0138171d28d9"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/image_cropper.xcframework.zip",
            checksum: "3e222e9a7c641f9dff199de910ad5ee9d52d664344d90e427bf04f84dc2e4b81"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/image_picker_ios.xcframework.zip",
            checksum: "334ccc40d261e708015cb55e32cb36784a46dc7d5dd0aba8498169429a1d72bd"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/mapbox_maps_flutter.xcframework.zip",
            checksum: "05cab74dce87e5a22ea7bda560202d8ec696c391e65f9d9a8b4b31634e126b8c"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/MapboxCommon.xcframework.zip",
            checksum: "9f1911df0f36a6a5255ce534a8ecd37785d5eceaaadfd06ba8cbaad6bb58ecac"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/MapboxCoreMaps.xcframework.zip",
            checksum: "82777c543720fa36792834d9a4e33d70f8bf057ff6a914cc1d185c6826e2605f"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/MapboxMaps.xcframework.zip",
            checksum: "02854737e69a4f9c5572efd575f5ed23f4d668ad2f34824ebd4f625be9d44ca9"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/NordicDFU.xcframework.zip",
            checksum: "91e7fecdeb1987383d77942d7c583cb02266d11c70121a5586be4bf7de94475e"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/package_info_plus.xcframework.zip",
            checksum: "545e5a234242dc81b1517be34184facd5a706980e05db5fe08bc21b7b4df100c"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/path_provider_foundation.xcframework.zip",
            checksum: "0eaf68ed3deb6b43f5bb2db72f1c1a83a8bf61c90f29f0355057c230c1dc0da2"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/permission_handler_apple.xcframework.zip",
            checksum: "e5a91941561defb004cecc0ea6f67563128947e949786bc655c5b176a056d83c"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/share_plus.xcframework.zip",
            checksum: "215005a1ce58222f78fdd754bf71ed34322ccbae7134239f71c610f2b83ff0cd"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/shared_preferences_foundation.xcframework.zip",
            checksum: "2b819c2ce69bda1d545a23b1b7c92d4db9a75786095cc62dd6f589a973f1f543"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/sqflite_darwin.xcframework.zip",
            checksum: "c1c298b1415324d695954454823ecd4a959cc499ebc0224505de613e36904371"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/TOCropViewController.xcframework.zip",
            checksum: "c2f76e0488d84f393671a32baac36aa12e1ff001e7ff61a8b0dfe9060ed7e3e5"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/Turf.xcframework.zip",
            checksum: "f995cf67bc4da94090bbbebc4666a02a87ac63b4ba404d84aa4bcc8af23b77cc"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/url_launcher_ios.xcframework.zip",
            checksum: "2086201f6c951d5378069b001b263bddcaebec1b46bca3791dde7c48ecd641fc"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/video_player_avfoundation.xcframework.zip",
            checksum: "48c2c358526eb9c1d7e64203c2310fcb7071a9bdc0a4918181d3987df525b362"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/wakelock_plus.xcframework.zip",
            checksum: "03a9c83af524ac70582c8e6631f0054f17c307b2a8da7e567a97d6f5d872745f"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.15/ZIPFoundation.xcframework.zip",
            checksum: "f31c316b6e21051fe4bb05a2f0a3e0cd304f811e8d5c0d8083a7daf98af1a312"
        )
    ]
)
