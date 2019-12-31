// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SwiftyRSA",
    platforms: [
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v2),
    ],
    products: [
        .library(
            name: "SwiftyRSA",
            targets: ["SwiftyRSA"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftyRSA",
            path: "Source",
            exclude: [
                "SSwiftyRSA+ObjC.swift"
            ]),
        .testTarget(
            name: "SwiftyRSATests",
            dependencies: ["SwiftyRSA"],
            path: "Tests"),
    ],
    swiftLanguageVersions: [.v4, .v5]
)

