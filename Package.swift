// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaebitCommonModels",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "HaebitCommonModels",
            targets: ["HaebitCommonModels"]
        ),
    ],
    targets: [
        .target(
            name: "HaebitCommonModels",
            path: "HaebitCommonModels"
        )
    ]
)
