//
//  PublishingBinding.swift
//  SparkInternal
//
//  Created by Michael Zimmermann on 24.11.23.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import Combine
import SwiftUI

@_spi(SPI) public final class ValueBinding<ID: Equatable & CustomStringConvertible> {
    private var selectedID: ID?

    public lazy var binding = Binding<ID?>(
        get: { self.selectedID },
        set: { newValue in
            self.selectedID = newValue
        }
    )

    public init(selectedID: ID?) {
        self.selectedID = selectedID
    }
}
