//
//  UIView-Attributes.swift
//  SparkInternal
//
//  Created by michael.zimmermann on 16.08.23.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import UIKit

@_spi(SPI) public extension UIView {
    var isNotHidden: Bool {
        return !self.isHidden
    }
}
