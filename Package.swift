// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SparkCommon",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SparkCommon",
            targets: ["SparkCommon"]
        ),
        .library(
            name: "SparkCommonMock",
            targets: ["SparkCommonMock"]
        )
    ],
    targets: [
        .target(
            name: "SparkCommon"
        ),
        .target(
            name: "SparkCommonMock",
            dependencies: [
                "SparkCommon"
            ]
        ),
        .testTarget(
            name: "SparkCommonTests",
            dependencies: [
                "SparkCommon",
                "SparkCommonMock"
            ]
        ),
    ]
)
