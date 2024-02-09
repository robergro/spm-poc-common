//
//  GetDidDisplayedTextChangeUseCase.swift
//  SparkInternal
//
//  Created by robin.lemaire on 12/07/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

// sourcery: AutoMockable
@_spi(SPI) public protocol GetDidDisplayedTextChangeUseCaseable {
    func execute(currentText: String?,
                 newText: String?,
                 displayedTextType: DisplayedTextType) -> Bool
    
    func execute(currentAttributedText: AttributedStringEither?,
                 newAttributedText: AttributedStringEither?,
                 displayedTextType: DisplayedTextType) -> Bool
}

@_spi(SPI) public struct GetDidDisplayedTextChangeUseCase: GetDidDisplayedTextChangeUseCaseable {

    // MARK: - Initialization

    public init() {
    }

    // MARK: - Execute

    /// The displayed text changed ?
    public func execute(
        currentText: String?,
        newText: String?,
        displayedTextType: DisplayedTextType
    ) -> Bool {
        return self.execute(
            currentValue: currentText,
            newValue: newText,
            displayedTextType: displayedTextType,
            expectedDisplayedTextType: .text // expectedDisplayedTextType
        )
    }

    /// The displayed attributed text changed ?
    public func execute(
        currentAttributedText: AttributedStringEither?,
        newAttributedText: AttributedStringEither?,
        displayedTextType: DisplayedTextType
    ) -> Bool {
        return self.execute(
            currentValue: currentAttributedText,
            newValue: newAttributedText,
            displayedTextType: displayedTextType,
            expectedDisplayedTextType: .attributedText
        )
    }

    // MARK: - Private Execute

    private func execute<T: Equatable>(
        currentValue: T?,
        newValue: T?,
        displayedTextType: DisplayedTextType,
        expectedDisplayedTextType: DisplayedTextType
    ) -> Bool {
        switch (currentValue, newValue) {
            // Values are differents
        case let (value1, value2) where value1 != value2:
            return true

            // Value are same and set
        case (_?, _?) where displayedTextType != expectedDisplayedTextType:
            return true

            // Values are nil
        case (nil, nil) where displayedTextType == expectedDisplayedTextType:
            return true

        default:
            return false
        }
    }
}
