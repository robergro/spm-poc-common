//
//  ViewEither.swift
//  SparkInternalSnapshotTests
//
//  Created by michael.zimmermann on 26.10.23.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import UIKit
import SwiftUI

@_spi(SPI) public typealias ViewEither = Either<UIView, AnyView>
