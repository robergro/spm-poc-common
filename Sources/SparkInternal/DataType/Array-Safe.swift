//
//  Array-Safe.swift
//  SparkInternal
//
//  Created by michael.zimmermann on 09.08.23.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import Foundation

@_spi(SI_SPI) public extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0, index < self.endIndex else {
            return nil
        }

        return self[index]
    }
}
