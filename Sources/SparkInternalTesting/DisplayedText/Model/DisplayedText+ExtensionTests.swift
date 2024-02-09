//
//  DisplayedText+ExtensionTests.swift
//  SparkCoreTests
//
//  Created by robin.lemaire on 14/09/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

@testable import SparkInternal

@_spi(SPI) public extension DisplayedText {

    // MARK: - Properties

    static func mocked(
        text: String = "My text"
    ) -> Self {
        return .init(
            text: text
        )
    }
}
