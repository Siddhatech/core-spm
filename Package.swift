// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AKCoreSwift",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AKCoreSwift",
            targets: ["AKCoreSwift"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AKCoreSwift",
            path: "AKCoreSwift.xcframework"
        )
    ]
)
