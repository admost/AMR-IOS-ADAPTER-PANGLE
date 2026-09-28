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
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", .exact("8.3.0-release.8"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PANGLE/releases/download/8.3.0/AMRAdapterTiktok.xcframework.zip",
            checksum: "1a44359db8c690a957d176d031c63b65589f8326529b96e6b64f13923155611d"
        )
    ]
)
