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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/App.xcframework.zip",
            checksum: "5d5179c052bc5ab1df57e4175d3c01030bd2a27d3ca07449f727b5d0bb75233c"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/Flutter.xcframework.zip",
            checksum: "2c122685edce96e7f6e5ded230c5d0f4a0423cdf20cd0caae277eb8a8b8f23f8"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/connectivity_plus.xcframework.zip",
            checksum: "5566ea2b23bff83577c76df04f51c1114ae332e6c5829f573e4f1700350e9561"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/device_info_plus.xcframework.zip",
            checksum: "fad9c0784df8cec110b3cdc8502c211e407dc038282ae6e71e9982593bba6f61"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "eaf06111b4334eec43621171b7deadcce662d3bfb44f0f1110e8da11fa2d6285"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/flutter_local_notifications.xcframework.zip",
            checksum: "64bc2eeccdb4008c6e6d056495595e4864e6e8ae4c67fca279fbf884991d184a"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/flutter_native_timezone_latest.xcframework.zip",
            checksum: "ec53a1995dc8b6541e4bd6b032db467cc92526d3e3feb5a62eeaeca63c498ced"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/flutter_secure_storage.xcframework.zip",
            checksum: "63cad94c502d02e53a8d4f701eec7e018049cd7ff3eeb80ea765805b0949668f"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/geolocator_apple.xcframework.zip",
            checksum: "dd8dc39d289621e6205f03e887d65046ccf7072af8d75b90b2f7ec4cae38086a"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/health.xcframework.zip",
            checksum: "db2a8e770073621a917d36a24c8640d7b8f9a7050de414040fb09abba11b9dfb"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/image_cropper.xcframework.zip",
            checksum: "7d9f280dc2dc49fb530985c6043c53a404efe945693ec15e28fcd06221935fd0"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/image_picker_ios.xcframework.zip",
            checksum: "a488951d6c557ead059e979ffff64d639455b90c1bc607d18cf7491c8d0025b9"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/mapbox_maps_flutter.xcframework.zip",
            checksum: "20d0823f64cfb565e59f58f8663f84f396d0a52e001a8dcaa8a24755cb51eefc"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/MapboxCommon.xcframework.zip",
            checksum: "93cfb24079fb3d8d55adf87f916485a68aecdba8e2186d57e423f1e5442e2b7c"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/MapboxCoreMaps.xcframework.zip",
            checksum: "2f082fcdaf66cd6b1fb3c51e963d490eea4d9dfadc9bfbef69bbc9ddff5cac8f"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/MapboxMaps.xcframework.zip",
            checksum: "f01bda958d39cb8312b8b7aa60edbe7b275750bc8156995c534e510c746d9732"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/NordicDFU.xcframework.zip",
            checksum: "b79feef1fd834e3b833ef303bc04997ea17a2722961e51259dbdb2232b793d82"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/package_info_plus.xcframework.zip",
            checksum: "9f5b00c414316077a1b5f5af77fe4c77fa64f19c9da51e8024a19c975cf258e4"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/path_provider_foundation.xcframework.zip",
            checksum: "fb51567869e07c9d9aa2667b91679ac3d285018e987af4d5fbcbe4db8ae5f518"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/permission_handler_apple.xcframework.zip",
            checksum: "cd2b63fee7785b619d04442800f237e461364add5dd4cb7e94206ad54c441a04"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/share_plus.xcframework.zip",
            checksum: "eb222b80cfab68f20660ee204fbc73ad5ba4e0c6615fce744976b569155617ee"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/shared_preferences_foundation.xcframework.zip",
            checksum: "d2f5914b4d8a7e85d064fa599c1af18177b0aa6df17cfbaccf57f6c1e51e866d"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/sqflite_darwin.xcframework.zip",
            checksum: "c67ad4e3989dab7f9087191fd0f94e36cddccecbaf57772d92f9d61085dd3750"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/TOCropViewController.xcframework.zip",
            checksum: "acb3330b2a86ffe4f4c41809cee860a7c20ff18aa06784ee2f6282c93598e4bb"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/Turf.xcframework.zip",
            checksum: "e4dc4aa99e020a705947d260603681b710e9695376977ac37c788cd79a46aedf"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/url_launcher_ios.xcframework.zip",
            checksum: "5327c73411a51d7f69150738416f0d03538b2e3848ff339f6babbb7b77d434a5"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/video_player_avfoundation.xcframework.zip",
            checksum: "421e987772d5efded103d8770fe6374a1224f65e98ec46881733cdad902adada"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/wakelock_plus.xcframework.zip",
            checksum: "e7aac2760c4403fc1d51f0553c0355947c73c6727c4c9b4e96c0431ce14eda7f"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.11/ZIPFoundation.xcframework.zip",
            checksum: "21ae8495623a949fc3c5e35cf51b64756b9d58b08493aae291418723651153a3"
        )
    ]
)
