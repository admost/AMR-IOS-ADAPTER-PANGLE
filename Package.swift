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
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", .exact("7.9.0-release.8"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PANGLE/releases/download/7.9.0/AMRAdapterTiktok.xcframework.zip",
            checksum: "44d39269cc9e16e82685b73e3e029356525e4c7a0088e73b77cd06d318cddb9c"
        )
    ]
)
