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
        .iOS(.v15)
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
            dependencies: ["Flutter", "camera_avfoundation", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "flutter_web_auth_2", "geolocator_apple", "health", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "FlutterPluginRegistrant",
            publicHeadersPath: "."
        ),

        // Swift wrapper API
        .target(
            name: "RollaSDK",
            dependencies: ["FlutterPluginRegistrant", "App", "Flutter", "camera_avfoundation", "connectivity_plus", "device_info_plus", "flutter_blue_plus_darwin", "flutter_local_notifications", "flutter_native_timezone_latest", "flutter_secure_storage", "flutter_web_auth_2", "geolocator_apple", "health", "image_cropper", "image_picker_ios", "mapbox_maps_flutter", "MapboxCommon", "MapboxCoreMaps", "MapboxMaps", "NordicDFU", "package_info_plus", "path_provider_foundation", "permission_handler_apple", "share_plus", "shared_preferences_foundation", "sqflite_darwin", "TOCropViewController", "Turf", "url_launcher_ios", "video_player_avfoundation", "wakelock_plus", "ZIPFoundation"],
            path: "Sources"
        ),

        // Flutter module (Dart code compiled to native)
        .binaryTarget(
            name: "App",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/App.xcframework.zip",
            checksum: "14e4c7d2da79e2fae030a9af5b74dce322026867104d3b91f28c5e1fcbfc2f82"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/Flutter.xcframework.zip",
            checksum: "969543f09fb6304249adef6e999ac9a1da4b2d2c5a18430281b842cec0034525"
        )
,
        // Flutter plugin: camera_avfoundation
        .binaryTarget(
            name: "camera_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/camera_avfoundation.xcframework.zip",
            checksum: "5d5af3849b79ab8eaa9755e68c65d52ed56434f39ffd23754eb6018670bf0b57"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/connectivity_plus.xcframework.zip",
            checksum: "f08338c214d6743b3bb227b31a3a6536c7924beb6ddae741c0acfbcd31499ac5"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/device_info_plus.xcframework.zip",
            checksum: "a5d4b07eb9c6d2208abf29d324ca5eb7c517e2602a1a45492fdb5e2dc081d4ff"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "d86d02ecc79ca5dab884a662f67fa8aced818f2b84a29d561b8fd5aceab1637c"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/flutter_local_notifications.xcframework.zip",
            checksum: "c7f9e14cfb5d57c0592f292e523697486520629488d8f1657a64e2e32899c07b"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/flutter_native_timezone_latest.xcframework.zip",
            checksum: "e9deaf133e701a62c369dbf3e46b28bbb112c917c3e7a0c563b99428af644b64"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/flutter_secure_storage.xcframework.zip",
            checksum: "8b6ff0674e440c1c27eca84e9e16bdf0bf0cae593b2a410241835130ab146bb5"
        )
,
        // Flutter plugin: flutter_web_auth_2
        .binaryTarget(
            name: "flutter_web_auth_2",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/flutter_web_auth_2.xcframework.zip",
            checksum: "7fd59f8eec767d5cb3202b99215f84e661d5eb75b62b224e5dbfde4830140878"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/geolocator_apple.xcframework.zip",
            checksum: "0198ed3bbd50e5748fb65948f29f3c23e0f5711972199149a082cb58cc2900ba"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/health.xcframework.zip",
            checksum: "c66898e7cffa6995fea7267d752113c07f2764bb4d635ad9c7d35ce3cfefba5f"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/image_cropper.xcframework.zip",
            checksum: "4b30272fff2016778b52371b391aa487a16c2e211326ec002ba47ee902177386"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/image_picker_ios.xcframework.zip",
            checksum: "2f4318394830da46ed8fdf1614b8c456a7de32e914fb51e1ce1130a0377730ba"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/mapbox_maps_flutter.xcframework.zip",
            checksum: "4bd6345e16809ffb55d1fe9712e15e98244988d7a72b822e2d5584c2e834eb87"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/MapboxCommon.xcframework.zip",
            checksum: "1c39645a147645e6fa6f0ce55079345dc279903ceda18f71a7c7901bae8f86b7"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/MapboxCoreMaps.xcframework.zip",
            checksum: "d774c2055276c5201f6769b01aa11451aceb9f4b25b0bbd2e737382f86ef4723"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/MapboxMaps.xcframework.zip",
            checksum: "94d9e5a6f8aa9acb02fd266f1a17071eb5bb4f52c0efa9176c180f980be9c6e2"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/NordicDFU.xcframework.zip",
            checksum: "56246461b453c792857fa470fb107989e5f2240b4e7430514e74576fd3cd2737"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/package_info_plus.xcframework.zip",
            checksum: "70e5945f13465bc5da8139e78c06572c2dee45019fd74f3d8ad1be0ba5ae3f26"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/path_provider_foundation.xcframework.zip",
            checksum: "949fa970c45a805162da41e23e8572819b6eb2ce6c72e45298480530375b9705"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/permission_handler_apple.xcframework.zip",
            checksum: "2c892b78f717be9146cbc1f0d584c13253f777c8ee706c280e51f14b8e133177"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/share_plus.xcframework.zip",
            checksum: "2686306c0f62b632f9c70c703220bce1639c2f278e6c29a26d0a2deeb2695bf3"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/shared_preferences_foundation.xcframework.zip",
            checksum: "17d453ea82e9bf77fc502f6ac8af3f71d850bfd6925d8b395989951e0ed6bc38"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/sqflite_darwin.xcframework.zip",
            checksum: "6caa622d98cdd1c156118974d4219ba977808161405d7e31b52ec2c5584a9fdd"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/TOCropViewController.xcframework.zip",
            checksum: "154b8c6871d8e5121167d32d7f53454241c6fb7cff51831e0d19ae8816d78829"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/Turf.xcframework.zip",
            checksum: "7affb1a35a4a28b39c38296f76c589fefbef473b9324a9d46c89060ef5fbb1ee"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/url_launcher_ios.xcframework.zip",
            checksum: "7b69bbb07ddba4cea71fdbf4bbdaba680ae232582e6bc613f62d8c7b6740a9f8"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/video_player_avfoundation.xcframework.zip",
            checksum: "dd395ea201b77d78fb00591ab9cc25c262b78bf5c032d04ddb49f65de4dee891"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/wakelock_plus.xcframework.zip",
            checksum: "ef58d63457e90ecb0b1f3b8135f81b03866322b02452b20c9c6220f147a29b59"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.2.0/ZIPFoundation.xcframework.zip",
            checksum: "422af82d709d8c3c052a36bf26084646bdfcb87561809e37f375471b7c582d14"
        )
    ]
)
