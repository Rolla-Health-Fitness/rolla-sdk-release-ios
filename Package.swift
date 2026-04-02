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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/App.xcframework.zip",
            checksum: "4284b4fcd9ece0757dabb4501cf917a3960c3f7d8f17b6ba6546e76ff8b97439"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/Flutter.xcframework.zip",
            checksum: "76f04939126c84bb0dbf427b1bcac77d80318e02a2e0eff0a2ebb7de42d924a6"
        )
,
        // Flutter plugin: apple_health
        .binaryTarget(
            name: "apple_health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/apple_health.xcframework.zip",
            checksum: "4bf33b7394d73e5c813f7d0975f91a8de61eb33c4cc7b1c2d3c3e205a59fc9b6"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/connectivity_plus.xcframework.zip",
            checksum: "2530d98cd50a9f1727679a6cc9c1a754420c15dfdf7a0740838aa249b996b188"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/device_info_plus.xcframework.zip",
            checksum: "a9dc35deea554ad61c83186c1fd587e7a084dc2ae580dcf95baf5f92f0c1303d"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "380177eeeee2467134becd7874b43a610b23a9fe7c72e577d9715090d15c836b"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/flutter_local_notifications.xcframework.zip",
            checksum: "bb5ee0327c12c323924fe8b79f379ce2ed69424ad2c57b52ede239aba8a46348"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/flutter_native_timezone_latest.xcframework.zip",
            checksum: "dbfe4ec7e4a1dda0cc370f0eae11fec4c068d1a191fb4954cb758b22ca666581"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/flutter_secure_storage.xcframework.zip",
            checksum: "82e3e42ff6f45e3dab56c410780c92ddb4f15b9397f954bc168712f5353f7c49"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/geolocator_apple.xcframework.zip",
            checksum: "d3bd7166bdaecddbd6e44a1fa2e15690bb25edc242eabfae912aace2dc818c98"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/image_cropper.xcframework.zip",
            checksum: "0c5014f68b98ff2c27cada3ca2eee641cd62524069a64dd549861a9a6c2062e9"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/image_picker_ios.xcframework.zip",
            checksum: "845d4dacf59fecb7929b82249d646f93271002166a911b3d36915ff3c13a1207"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/mapbox_maps_flutter.xcframework.zip",
            checksum: "ddfe6fae26dab2871a6d915df463102a3c0a9c6c47d292fc60ffa7bb4ebba270"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/MapboxCommon.xcframework.zip",
            checksum: "f1774ad2b16652bdadc5e5857b2f134ca1f1d80ede4e18a8d56b88eb0c27e7a9"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/MapboxCoreMaps.xcframework.zip",
            checksum: "ca6ab338a8a1df73d4f3790cbc62e5c2d2b17b413869d5dfbfb611dd8589cead"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/MapboxMaps.xcframework.zip",
            checksum: "5be747d99f9269dbbed0042f33a9cad2890211355eabaf7d75102c1516ad5a4a"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/NordicDFU.xcframework.zip",
            checksum: "0658cdb9cefecc22bd11cce179ae2f6dd4d207e59d699dc895d2f7a05b5245fb"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/package_info_plus.xcframework.zip",
            checksum: "734a47bd8fa99e4422b4fb3feff976982b6cd246809a39a934208c982b4c60ae"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/path_provider_foundation.xcframework.zip",
            checksum: "3a7c555e016ef44cf1c98d2b45e0b46d0610eba00a9aa550580c99f44a4d1bd3"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/permission_handler_apple.xcframework.zip",
            checksum: "6029b4a1012c649b77e3b12d20cabd944602bab62ce05b2b02e42d1aa3456075"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/share_plus.xcframework.zip",
            checksum: "bcac1861d54328251a74e38076e8a0ca4e762c78037449ce2dbf78aa8b436014"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/shared_preferences_foundation.xcframework.zip",
            checksum: "6f128facc9e8e17678b0e66155463718f995ce0a533cc331d15296df68051e88"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/sqflite_darwin.xcframework.zip",
            checksum: "bd9c790ff1071abd354fbe5156f224e19095fbbab3ca297b1c09429b0915d1a5"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/TOCropViewController.xcframework.zip",
            checksum: "684d51c3a1610e109195398cf802168e86b3fbf13ce84f5abe79422849688df3"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/Turf.xcframework.zip",
            checksum: "31a1392bc297665dbd0e5426522b72e4da38c28fa27f69dee814ab7d90a49ba5"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/url_launcher_ios.xcframework.zip",
            checksum: "1f3a10b7559d9dc72692fe58b806833d662ce8a3b8462617bf568eb08aec3beb"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/video_player_avfoundation.xcframework.zip",
            checksum: "0f17ba5bf34661034b1bfc76e1927c7ac74fe8e4d480e36eb4544660009799e6"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/wakelock_plus.xcframework.zip",
            checksum: "c652a4697c9461fa490ea0cefc37f817bec95768e964fde2a3aec308dd88aba9"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.6/ZIPFoundation.xcframework.zip",
            checksum: "896568bd13e7a8b0c67f312c437ae0a935d1ff250a4add59eaab915a855598c5"
        )
    ]
)
