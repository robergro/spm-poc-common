//
//  SwiftUIComponentSnapshotTestCase.swift
//  SparkCoreSnapshotTests
//
//  Created by robin.lemaire on 06/10/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import SwiftUI
import UIKit
@_implementationOnly import SnapshotTesting

@_spi(SI_SPI) open class SwiftUIComponentSnapshotTestCase: SnapshotTestCase {

    // MARK: - Snapshot Testing

    public func assertSnapshot(
        matching view: @autoclosure () -> some View,
        named name: String? = nil,
        modes: [ComponentSnapshotTestMode],
        sizes: [UIContentSizeCategory],
        record recording: Bool = ComponentSnapshotTestConstants.record,
        timeout: TimeInterval = ComponentSnapshotTestConstants.timeout,
        file: StaticString = #file,
        testName: String = #function,
        line: UInt = #line
    ) {
        for mode in modes {
            for size in sizes {
                sparkAssertSnapshot(
                    matching: view().environment(
                        \.sizeCategory,
                        ContentSizeCategory(size) ?? .extraSmall
                    )
                    .background(Color.gray),
                    as: .image(
                        precision: ComponentSnapshotTestConstants.imagePrecision,
                        perceptualPrecision: ComponentSnapshotTestConstants.imagePerceptualPrecision,
                        traits: ComponentSnapshotTestHelpers.traitCollection(
                            mode: mode,
                            size: size
                        )
                    ),
                    named: name,
                    record: recording,
                    timeout: timeout,
                    file: file,
                    testName: ComponentSnapshotTestHelpers.testName(
                        testName,
                        mode: mode,
                        size: size
                    ),
                    line: line
                )
            }
        }
    }
}
