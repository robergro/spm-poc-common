//
//  ComponentSnapshotTestHelpers.swift
//  SparkCoreSnapshotTests
//
//  Created by robin.lemaire on 06/10/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import UIKit

@_spi(SI_SPI) public enum ComponentSnapshotTestHelpers {

    // MARK: - Helpers

    public static func testName(
        _ testName: String,
        mode: ComponentSnapshotTestMode,
        size: UIContentSizeCategory
    ) -> String {
        return [testName, mode.suffix, size.identifier]
            .joined(separator: "-")
    }

    public static func traitCollection(
        mode: ComponentSnapshotTestMode,
        size: UIContentSizeCategory
    ) -> UITraitCollection {
        return UITraitCollection(traitsFrom: [
            mode.traitCollection,
            UITraitCollection(preferredContentSizeCategory: size)
        ])
    }
}

// MARK: - Private extension

private extension UIContentSizeCategory {
    /// Returns the identifier used in the filename
    var identifier: String {
        switch self {
        case .unspecified:
            return "unspecified"
        case .extraSmall:
            return "extraSmall"
        case .small:
            return "small"
        case .medium:
            return "medium"
        case .large:
            return "large"
        case .extraLarge:
            return "extraLarge"
        case .extraExtraLarge:
            return "extraExtraLarge"
        case .extraExtraExtraLarge:
            return "extraExtraExtraLarge"
        case .accessibilityMedium:
            return "accessibilityMedium"
        case .accessibilityLarge:
            return "accessibilityLarge"
        case .accessibilityExtraLarge:
            return "accessibilityExtraLarge"
        case .accessibilityExtraExtraLarge:
            return "accessibilityExtraExtraLarge"
        case .accessibilityExtraExtraExtraLarge:
            return "accessibilityExtraExtraExtraLarge"
        default:
            return "unknown"
        }
    }
}

