// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CASPM",
    products: [
        .library(
            name: "CASPM",
            targets: ["CASPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/momento-ads/momento-ios-sdk.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CASPM",
            dependencies: [
                .target(name: "IronSource"),
                .product(name: "Momento_iOS", package: "momento-ios-sdk"),
            ]),
        .binaryTarget(
            name: "IronSource",
            path: "./Sources/IronSource.xcframework")
    ]
)
