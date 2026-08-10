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
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", .exact("8.2.0-release.9"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PANGLE/releases/download/8.2.1/AMRAdapterTiktok.xcframework.zip",
            checksum: "142ef9005330db3c8137d6f477125a9b6556779efc8a4687d581354ec7a01b4e"
        )
    ]
)
