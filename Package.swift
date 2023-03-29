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
            targets: ["AKCoreSwiftWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airsidemobile/JOSESwift", from: "2.4.0")
    ],
    targets: [
        
        .target(
            name: "AKCoreSwiftWrapper",
            dependencies: [
            "JOSESwift",
            .target(name: "AKCoreSwift")
            ],
            path: "AKCoreSwiftWrapper"
        ),
        
        .binaryTarget(
            name: "AKCoreSwift",
            path: "AKCoreSwift.xcframework"),
        ]
)
