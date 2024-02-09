//
//  Updateable.swift
//  Spark
//
//  Created by michael.zimmermann on 25.07.23.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import Foundation

@_spi(SPI) public protocol Updateable {
    func update<Value>(_ keyPath: WritableKeyPath<Self, Value>, value: Value) -> Self
}

@_spi(SPI) public extension Updateable {
    func update<Value>(_ keyPath: WritableKeyPath<Self, Value>, value: Value) -> Self {

        var copy = self
        copy[keyPath: keyPath] = value
        return copy
    }
}
