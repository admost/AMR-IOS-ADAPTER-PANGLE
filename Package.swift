// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterPangle",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterPangle",
            targets: ["AMRAdapterPangle"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", .exact("8.4.0-release.5"))
    ],
    targets: [
        .target(
            name: "AMRAdapterPangle",
            dependencies: [
                "AMRAdapterPangleLib",
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterTiktok",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterPangleLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PANGLE/releases/download/8.4.0/AMRAdapterTiktok.xcframework.zip",
            checksum: "790be1fd3f331c234b39e0b67062a6bbae9f4e651e6b526f83b6f45fd28586e4"
        )
    ]
)
