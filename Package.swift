// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-advent-of-code",
    products: [
        .library(
            name: "AdventOfCode",
            targets: ["AdventOfCode"]
        ),
    ],
    dependencies: [
        .package(
            name: "swift-algorithms",
            url: "https://github.com/apple/swift-algorithms.git",
            .upToNextMajor(from: "1.0.0")
        ),
        .package(
            name: "swift-parsing",
            url: "https://github.com/pointfreeco/swift-parsing",
            .upToNextMajor(from: "0.9.0")
        )
    ],
    targets: [
        .target(
            name: "AdventOfCode",
            dependencies: [
                .product(
                    name: "Algorithms",
                    package: "swift-algorithms"
                ),
                .product(
                    name: "Parsing",
                    package: "swift-parsing"
                )
            ]
        ),
        .testTarget(
            name: "AdventOfCodeTests",
            dependencies: ["AdventOfCode"]
        ),
    ]
)
