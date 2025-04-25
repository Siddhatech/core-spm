// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AKCoreSwift",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AKCoreSwift",
            targets: ["AKCoreSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "AKCoreSwift",
            path: "AKCoreSwift.xcframework"),
            condition: .when(platforms: [.iOS]) 
        ]
)
