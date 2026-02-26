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
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/App.xcframework.zip",
            checksum: "46e171c4ab4fb7e65c9e465b96c0dbdb55275d5f94aecfb17bdafdea07d6b2d3"
        ),

        // Flutter engine runtime
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/Flutter.xcframework.zip",
            checksum: "5e59269e0282571f575aee27de53a7f705dca780efb0dd9d051c57043388896f"
        )
,
        // Flutter plugin: connectivity_plus
        .binaryTarget(
            name: "connectivity_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/connectivity_plus.xcframework.zip",
            checksum: "15477e12eda4640e5806206b277fce319ce8555b3d9d14486d24549383e93c50"
        )
,
        // Flutter plugin: device_info_plus
        .binaryTarget(
            name: "device_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/device_info_plus.xcframework.zip",
            checksum: "d123eac7ee3578dce0d7f7c9b78da486a8409a452115818f7a7a213c7cc65f06"
        )
,
        // Flutter plugin: flutter_blue_plus_darwin
        .binaryTarget(
            name: "flutter_blue_plus_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/flutter_blue_plus_darwin.xcframework.zip",
            checksum: "9c87c2a23b0f1d64e0e5c3a0746e078917b53ba4a3cc35b99a2e7f4827933575"
        )
,
        // Flutter plugin: flutter_local_notifications
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/flutter_local_notifications.xcframework.zip",
            checksum: "99547fec2d23f52f9f62cce9b5915e7adeac821e69aabefdd5cf5cc54e6d1f86"
        )
,
        // Flutter plugin: flutter_native_timezone_latest
        .binaryTarget(
            name: "flutter_native_timezone_latest",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/flutter_native_timezone_latest.xcframework.zip",
            checksum: "0c488709bad7e50fc8726b1148bea92c02a7adaa82716d7d3a3db3f2fe9d32a1"
        )
,
        // Flutter plugin: flutter_secure_storage
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/flutter_secure_storage.xcframework.zip",
            checksum: "60c4c1b2106ca4bfd058f705b9a678e58ec3c2eaf0d0609d11204e3a71bec6f7"
        )
,
        // Flutter plugin: geolocator_apple
        .binaryTarget(
            name: "geolocator_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/geolocator_apple.xcframework.zip",
            checksum: "d3b4bd6bd3c54f29750c1c6d530d43146e3edbbba53707bf61be26fabe77501f"
        )
,
        // Flutter plugin: image_cropper
        .binaryTarget(
            name: "image_cropper",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/image_cropper.xcframework.zip",
            checksum: "a7e9582fca983eae8cd29a6f579d606b38747b13971687da3dbb149490f3a218"
        )
,
        // Flutter plugin: image_picker_ios
        .binaryTarget(
            name: "image_picker_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/image_picker_ios.xcframework.zip",
            checksum: "4c2bb9abefda7419e448978cd7cf2809691f290c5f7c311b4e91352345a50bf1"
        )
,
        // Flutter plugin: mapbox_maps_flutter
        .binaryTarget(
            name: "mapbox_maps_flutter",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/mapbox_maps_flutter.xcframework.zip",
            checksum: "7687ea11bafd8dfdd09c3e830f2dfbab32aa44ccf8b17dd647adf125f214f775"
        )
,
        // Flutter plugin: MapboxCommon
        .binaryTarget(
            name: "MapboxCommon",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/MapboxCommon.xcframework.zip",
            checksum: "c76a1649c02fa6655cc98cffae2d1c161c728c0dcc7e50a7ae91a608af19b32b"
        )
,
        // Flutter plugin: MapboxCoreMaps
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/MapboxCoreMaps.xcframework.zip",
            checksum: "72d3395501dc5e1ef739492ca6b220126e369e154fab6ce8ea4d3cda5b4c8f89"
        )
,
        // Flutter plugin: MapboxMaps
        .binaryTarget(
            name: "MapboxMaps",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/MapboxMaps.xcframework.zip",
            checksum: "d046a0077654fbe7f85a6929f63a899e2229ab8608cdb9fa3d946e217142d265"
        )
,
        // Flutter plugin: NordicDFU
        .binaryTarget(
            name: "NordicDFU",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/NordicDFU.xcframework.zip",
            checksum: "daf417404496075df3a8f7109a763986b8cc16de2cd0e81e3b9596fa470e134b"
        )
,
        // Flutter plugin: package_info_plus
        .binaryTarget(
            name: "package_info_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/package_info_plus.xcframework.zip",
            checksum: "e18b9ddf4ff06ba89f81dacb0accc02ddf1b653861c759fe7b494f456471af7f"
        )
,
        // Flutter plugin: path_provider_foundation
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/path_provider_foundation.xcframework.zip",
            checksum: "df2e3c9167a1b9455c95894f823657493bb8de75163f6d72893a8b1b7221fd5e"
        )
,
        // Flutter plugin: permission_handler_apple
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/permission_handler_apple.xcframework.zip",
            checksum: "c62b98791e828b40afb00ded0e18ef4c29d0ab603c727bc2b3656d0374df5677"
        )
,
        // Flutter plugin: share_plus
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/share_plus.xcframework.zip",
            checksum: "4455fdb4438171f80fe9512c77c3716b36fd8d17280b30f24766bb863485fb41"
        )
,
        // Flutter plugin: shared_preferences_foundation
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/shared_preferences_foundation.xcframework.zip",
            checksum: "32a81c8ae98c00ed511f02766af38e896e7d71666802c472e83a815e95f82cb1"
        )
,
        // Flutter plugin: sqflite_darwin
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/sqflite_darwin.xcframework.zip",
            checksum: "e318d1d626785a8901ea32a6a11b8ed0767ed2f8cb021c865f46992fad433e7d"
        )
,
        // Flutter plugin: TOCropViewController
        .binaryTarget(
            name: "TOCropViewController",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/TOCropViewController.xcframework.zip",
            checksum: "e9c43080e045a10cacdd2f94884be12f8843d8c226ef29bece1c98d511315efa"
        )
,
        // Flutter plugin: Turf
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/Turf.xcframework.zip",
            checksum: "4a1e81203005b047daa2401d2bd3ee87a952c88ab226b86aa95a58c2893c4eb5"
        )
,
        // Flutter plugin: url_launcher_ios
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/url_launcher_ios.xcframework.zip",
            checksum: "21ccc4b8f4771fefe69e37a459f88b58b4251202a46bc973a577a1c1cafb3de2"
        )
,
        // Flutter plugin: video_player_avfoundation
        .binaryTarget(
            name: "video_player_avfoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/video_player_avfoundation.xcframework.zip",
            checksum: "e7a8c5e7ee3bc387ed3ed2f43e07dd998deba444f37343aeb0beb5069d509355"
        )
,
        // Flutter plugin: wakelock_plus
        .binaryTarget(
            name: "wakelock_plus",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/wakelock_plus.xcframework.zip",
            checksum: "58eb7de10d8e9b93398df07a8f579909a5a590fe663ba43aabe8bc2fadb06e06"
        )
,
        // Flutter plugin: ZIPFoundation
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/Rolla-Health-Fitness/rolla-sdk-release-ios/releases/download/0.1.3/ZIPFoundation.xcframework.zip",
            checksum: "92eb09bc852e0fa7250c0a3e65f8ed90283f94613ddfa9b4b391f72c2800eeaf"
        )
    ]
)
