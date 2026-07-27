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
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", .exact("8.2.0-release.7"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PANGLE/releases/download/8.2.0/AMRAdapterTiktok.xcframework.zip",
            checksum: "4bb22afab89a8ebf5a31145d86be064a1fe0d287ce37ae5375c9fddb1f33d319"
        )
    ]
)
