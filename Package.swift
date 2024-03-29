// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SparkInternal",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SparkInternal",
            targets: ["SparkInternal"]
        ),
        .library(
            name: "SparkInternalTesting",
            targets: ["SparkInternalTesting"]
        ),
        .library(
            name: "SparkInternalSnapshotTesting",
            targets: ["SparkInternalSnapshotTesting"]
        )
    ],
    dependencies: [
        // Git
        .package(
            url: "https://github.com/robergro/spm-poc-theming.git",
            branch: "main"
        ),

        // Local
//        .package(
//            path: "../spm-poc-theming"
//        ),

        // External
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing",
            from: "1.11.0"
        )
    ],
    targets: [
        .target(
            name: "SparkInternal",
            dependencies: [
                .product(
                    name: "SparkTheming",
                    package: "spm-poc-theming"
                )
            ]
        ),
        .target(
            name: "SparkInternalTesting",
            dependencies: [
                "SparkInternal",
                .product(
                    name: "SparkThemingTesting",
                    package: "spm-poc-theming"
                ),
                .product(
                    name: "SparkTheme",
                    package: "spm-poc-theming"
                )
            ]
        ),
        .target(
            name: "SparkInternalSnapshotTesting",
            dependencies: [
                "SparkInternal",
                .product(
                    name: "SparkThemingTesting",
                    package: "spm-poc-theming"
                ),
                .product(
                    name: "SparkTheme",
                    package: "spm-poc-theming"
                ),
                .product(
                    name: "SnapshotTesting",
                    package: "swift-snapshot-testing"
                ),
            ]
        ),
        .testTarget(
            name: "SparkInternalUnitTests",
            dependencies: [
                "SparkInternal",
                "SparkInternalTesting"
            ]
        ),
        .testTarget(
            name: "SparkInternalSnapshotTests",
            dependencies: [
                "SparkInternal",
                "SparkInternalSnapshotTesting",
                "SparkInternalTesting"
            ]
        )
    ]
)
