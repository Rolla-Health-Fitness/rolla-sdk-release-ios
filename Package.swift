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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/App.xcframework.zip",
            checksum: "a1ac4b1b87a234d82b9666c8e9afc2c867cdb803859fa6f02e046e1d7cad9304"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/Flutter.xcframework.zip",
            checksum: "00e8f804447d3c02cca63c62137098d1487cef418ed39cd2fac9c1297b763cfb"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/apple_health.xcframework.zip",
            checksum: "02cc2ad7831461e8476fe4e0c3da154ecaedcf90655c9b9c0334bcc1047219b6"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/connectivity_plus.xcframework.zip",
            checksum: "e78014c3293a6d544fb8bd523df9e0db53da5290ff233f3532f4bbb577976f0c"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/device_info_plus.xcframework.zip",
            checksum: "81dff12248a2cbe5573f71e899c5f3233bd5885a145cba61cefa5c77ce482d69"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "919fcc47b261f381cda5ec744c5f0d57a24355a601875f69b13d59190e2f0d0b"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/flutter_local_notifications.xcframework.zip",
            checksum: "bcf4449121047c368c39a999bcb0ff8bf18f5e4933878b1ea7c37e6a3ed4d26f"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/flutter_native_timezone_latest.xcframework.zip",
            checksum: "1e8b9f1e3a53c7c7da378b1c3d993bbb2112c54340a5eee637013864b610122b"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/flutter_secure_storage.xcframework.zip",
            checksum: "c93122856fdda272a99d1501786853bb540f0817f194ef90873942c50b9ff6ab"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/geolocator_apple.xcframework.zip",
            checksum: "dae9109546e759e23452fcc7301867bf7a8ead98a631f995037c74bdd7ed331c"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/image_cropper.xcframework.zip",
            checksum: "ea20a3176406c277379090ce9e32638edd0462794a1ff4e732b92cde848102e9"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/image_picker_ios.xcframework.zip",
            checksum: "46b35c14440c1d750cade596d1b5f6a47139915fcaeb86094ecbb071b772b3e6"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/mapbox_maps_flutter.xcframework.zip",
            checksum: "e98d20b9c1365bfbbe7c5fd56a7d92d4acdeb2a3e904e1a6388cc195a9d0d6fa"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/MapboxCommon.xcframework.zip",
            checksum: "475aecd376fabba6885678004e7c39f9a3c661263975dd72e755276a401e168f"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/MapboxCoreMaps.xcframework.zip",
            checksum: "4b6ff4b90e5d58dada1c602325ccee59bcb258bf8698ea3a950895b6529d0dc3"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/MapboxMaps.xcframework.zip",
            checksum: "601354211a8461423d3320077d7fb6374d67696f85eec501a67d4478c65579e3"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/NordicDFU.xcframework.zip",
            checksum: "518d2b69653861efb305c19924c61be454bb209aa5fa64d4be46a2339bfc4e67"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/package_info_plus.xcframework.zip",
            checksum: "3b6db8ab60027e43c680759d5755f66e18b15c9929013c9724ed1790a60bebbb"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/path_provider_foundation.xcframework.zip",
            checksum: "3daa0e1637bbc9c32ac2066ebe119c1f77fb5a6d1820d1da33598729e42f70e6"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/permission_handler_apple.xcframework.zip",
            checksum: "1355b028b7f14b2bba8c809e5e083be7bd51cb9aaa97c6a4e5e3b1124d24b4b1"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/share_plus.xcframework.zip",
            checksum: "4f5cf101acc399f5c62dff9d877bd80cdd1f2f91590ddaf83f3056023cc41d22"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/shared_preferences_foundation.xcframework.zip",
            checksum: "75959127f3e3d017724b5cd28eeda3244d5e7c362aabc89777689dcf9fc74c63"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/sqflite_darwin.xcframework.zip",
            checksum: "dc5687c87ac0505d9194f8fce583f538cf6f4207148b8d014ca14595d75aa94c"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/TOCropViewController.xcframework.zip",
            checksum: "920b932c053ebd735fdd3de5d718dcfa91e168dc95be824a3d9b5bd25dfaa7f1"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/Turf.xcframework.zip",
            checksum: "73a8858cc8311c079ad87e5d5dfcca576a9375fba0cdc66b2d7a4138b4c932d0"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/url_launcher_ios.xcframework.zip",
            checksum: "e8defb023ff4813587af3e89e604c882be722d261f0fb1107ad4cf68cf33ae79"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/video_player_avfoundation.xcframework.zip",
            checksum: "31725633321724e1267c9cc8dcf9a730ad49a765820ecddab985e727992a557c"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/wakelock_plus.xcframework.zip",
            checksum: "17147b7ba59d530730abeee94a7bde9b9fe6e46a1103d4055737775bf0b08146"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.8/ZIPFoundation.xcframework.zip",
            checksum: "c1fc73d4b2197d3a08cf7b7769683be1a6c9ce7519a8fcff7912029871850d83"
        )
    ]
)
