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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/App.xcframework.zip",
            checksum: "be55fcbec6eb122df25e4a3862ab71685dbeefe4cdde8f8cf4433d3b9a8b6f92"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/Flutter.xcframework.zip",
            checksum: "18be3f8b05e9fd03dbdd36c13a224e0623ec16fcaecfb9d04cb06802f85ec0f6"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/connectivity_plus.xcframework.zip",
            checksum: "71046ec1bc9d28b3843e496572c56c1f7ab366ffe2ad4a6e326ebc35b51057d3"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/device_info_plus.xcframework.zip",
            checksum: "b2f05a4f0bc9e9becb9a36112f98861ed58c1d3596635d61ca9c993d62293c6e"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "03cae67c82d399f9cc44fefc5d299827c12693291cf499c565e9daa5510813d2"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/flutter_local_notifications.xcframework.zip",
            checksum: "edf03c24f6d9151de8df8223f5851ab9ed262cfbf5363235133243e79abe5d2a"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/flutter_native_timezone_latest.xcframework.zip",
            checksum: "c99abf1cfe73caecfdb35a6504ee47ed8991c97a62f079f324303bcd5fb5fc61"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/flutter_secure_storage.xcframework.zip",
            checksum: "e9f2ed3a17660850af6171d657a9e98e17ce57bbdfa275caca6bc920ec11b037"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/geolocator_apple.xcframework.zip",
            checksum: "d38d19b47b79e510c888ceb46ae41285a0d608b3df51822fa0d18f522f5ffa99"
        )
,
        // Flutter plugin: health
        .binaryTarget(
            name: "health",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/health.xcframework.zip",
            checksum: "4520c1dffbb2bdd065002f83917a61edf30243c0c7f66578795f47c66a80a069"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/image_cropper.xcframework.zip",
            checksum: "39c4a1b8102ff421412d7ccd7c3b097457321a7eb9437a85462db76c85fb6eb3"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/image_picker_ios.xcframework.zip",
            checksum: "390514fa5c9ee3cb21c682dd85f5415723cc419cea0b76cfd359fb9bdaa8d28c"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/mapbox_maps_flutter.xcframework.zip",
            checksum: "4f290fd37083ba4bde7a43f756e361eebf92d7dc97e0a1b887fe2ab9495ebf1a"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/MapboxCommon.xcframework.zip",
            checksum: "3e921a2e0919891c1fe0bfefa517c5aaf99e5cb36abac3b06f4191bbdce69122"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/MapboxCoreMaps.xcframework.zip",
            checksum: "6753f1285719fe5cd8e8cd30e676cfea89d96be1940cae1efa064b9ae0fc8c74"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/MapboxMaps.xcframework.zip",
            checksum: "365252fac40ebf02b97221d488ff9c159b3bf65b189e08264798651b479fa04f"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/NordicDFU.xcframework.zip",
            checksum: "bf59bfde90cb3d727ab4891b7f4d4e72dcd96d648d2bd3a9214a489ffef64053"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/package_info_plus.xcframework.zip",
            checksum: "1cc60a915673ce3de4a73e6aa2a25e44b1a6d548e41e0865bf8a6244541d7337"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/path_provider_foundation.xcframework.zip",
            checksum: "af54a47ab999238be6b7d84b86cc2fb33e8060115d00acbb814f56021bca22dc"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/permission_handler_apple.xcframework.zip",
            checksum: "1139f277db6d44df4eb1dbe19eccb020927e792c29de1d9dffa85a757d2e6320"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/share_plus.xcframework.zip",
            checksum: "316dcd9296fee0504113a457a45e5dce0d243c5bb360f72f9b45c9cc11f53b1c"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/shared_preferences_foundation.xcframework.zip",
            checksum: "6afe39b7c66c90720bd29ecaab0542547502e7601516c1000a715ecfcea30bd6"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/sqflite_darwin.xcframework.zip",
            checksum: "6561a21190b6fa053dd29b9aef21ea94158be334e9b90bf1c93320c7181ddf0e"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/TOCropViewController.xcframework.zip",
            checksum: "10f3a1e7d04bdcb914224dbd963f70d46d750be7680ebed3428f39e09361f2c0"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/Turf.xcframework.zip",
            checksum: "d696a4200dffd8bfba9f61f9ee2d3d96d7a07112e0605a2c3563f4afac9f7c63"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/url_launcher_ios.xcframework.zip",
            checksum: "b31e909aad10ac9ce141479d1d6a9984cb3c50bbc49ea604e84f8205bb303c15"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/video_player_avfoundation.xcframework.zip",
            checksum: "aec57554d08aa0800eebe166d557ea0a66b64bf1576359df6a778bdd81053f1d"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/wakelock_plus.xcframework.zip",
            checksum: "05a7fa2743a36175f8d94848b1bb7856bab05b69daa8beca1442eab3f7960b82"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.14/ZIPFoundation.xcframework.zip",
            checksum: "70e8dfe44209bedbffeaf9b6b020a721f05f39b6f9200e95364e346e778bc6e9"
        )
    ]
)
