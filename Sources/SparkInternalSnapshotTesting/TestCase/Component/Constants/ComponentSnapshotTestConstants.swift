//
//  ComponentSnapshotTestConstants.swift
//  SparkCoreTests
//
//  Created by robin.lemaire on 06/10/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import UIKit

@_spi(SPI) public enum ComponentSnapshotTestConstants {
    public static let record = false
    public static let timeout: TimeInterval = 5

    public static let imagePrecision: Float = 0.98
    public static let imagePerceptualPrecision: Float = 0.98

    public enum Modes {
        public static let all: [ComponentSnapshotTestMode] = [.light, .dark]
        public static let `default`: [ComponentSnapshotTestMode] = [.light]
    }

    public enum Sizes {
        public static let all: [UIContentSizeCategory] = [.extraSmall, .medium, .accessibilityExtraExtraExtraLarge]
        public static let `default`: [UIContentSizeCategory] = [.medium]
    }
}
