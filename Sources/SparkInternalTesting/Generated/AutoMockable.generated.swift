// Generated using Sourcery 1.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
import UIKit
import SwiftUI

import Combine
@testable import SparkInternal





@_spi(SPI) public final class DisplayedTextViewModelGeneratedMock: SparkInternal.DisplayedTextViewModel, ResetGeneratedMock {

    public var underlyingDisplayedTextType: DisplayedTextType!
    public var displayedTextType: DisplayedTextType {
        get { return underlyingDisplayedTextType }
        set(value) { underlyingDisplayedTextType = value }
    }
    public var displayedText: DisplayedText?
    public var underlyingContainsText: Bool = false
    public var containsText: Bool {
        get { return underlyingContainsText }
        set(value) { underlyingContainsText = value }
    }

    // MARK: - Initialization

    public init() {}

    // MARK: - textChanged

    public var textChangedWithTextCallsCount = 0
    public var textChangedWithTextCalled: Bool {
        return textChangedWithTextCallsCount > 0
    }
    public var textChangedWithTextReceivedText: String?
    public var textChangedWithTextReceivedInvocations: [String?] = []
    public var textChangedWithTextReturnValue: Bool = false
    public var _textChangedWithText: ((String?) -> Bool)?
    public func textChanged(_ text: String?) -> Bool {
        textChangedWithTextCallsCount += 1
        textChangedWithTextReceivedText = text
        textChangedWithTextReceivedInvocations.append(text)
        return _textChangedWithText.map({ $0(text) }) ?? textChangedWithTextReturnValue
    }

    // MARK: - attributedTextChanged

    public var attributedTextChangedWithAttributedTextCallsCount = 0
    public var attributedTextChangedWithAttributedTextCalled: Bool {
        return attributedTextChangedWithAttributedTextCallsCount > 0
    }
    public var attributedTextChangedWithAttributedTextReceivedAttributedText: AttributedStringEither?
    public var attributedTextChangedWithAttributedTextReceivedInvocations: [AttributedStringEither?] = []
    public var attributedTextChangedWithAttributedTextReturnValue: Bool = false
    public var _attributedTextChangedWithAttributedText: ((AttributedStringEither?) -> Bool)?
    public func attributedTextChanged(_ attributedText: AttributedStringEither?) -> Bool {
        attributedTextChangedWithAttributedTextCallsCount += 1
        attributedTextChangedWithAttributedTextReceivedAttributedText = attributedText
        attributedTextChangedWithAttributedTextReceivedInvocations.append(attributedText)
        return _attributedTextChangedWithAttributedText.map({ $0(attributedText) }) ?? attributedTextChangedWithAttributedTextReturnValue
    }

    // MARK: Reset 

    public func reset() {
        textChangedWithTextCallsCount = 0
        textChangedWithTextReceivedText = nil 
        textChangedWithTextReceivedInvocations = []
        attributedTextChangedWithAttributedTextCallsCount = 0
        attributedTextChangedWithAttributedTextReceivedAttributedText = nil 
        attributedTextChangedWithAttributedTextReceivedInvocations = []
    }
}

@_spi(SPI) public final class GetDidDisplayedTextChangeUseCaseableGeneratedMock: SparkInternal.GetDidDisplayedTextChangeUseCaseable, ResetGeneratedMock {


    // MARK: - Initialization

    public init() {}

    // MARK: - execute

    public var executeWithCurrentTextAndNewTextAndDisplayedTextTypeCallsCount = 0
    public var executeWithCurrentTextAndNewTextAndDisplayedTextTypeCalled: Bool {
        return executeWithCurrentTextAndNewTextAndDisplayedTextTypeCallsCount > 0
    }
    public var executeWithCurrentTextAndNewTextAndDisplayedTextTypeReceivedArguments: (currentText: String?, newText: String?, displayedTextType: DisplayedTextType)?
    public var executeWithCurrentTextAndNewTextAndDisplayedTextTypeReceivedInvocations: [(currentText: String?, newText: String?, displayedTextType: DisplayedTextType)] = []
    public var executeWithCurrentTextAndNewTextAndDisplayedTextTypeReturnValue: Bool = false
    public var _executeWithCurrentTextAndNewTextAndDisplayedTextType: ((String?, String?, DisplayedTextType) -> Bool)?
    public func execute(currentText: String?, newText: String?, displayedTextType: DisplayedTextType) -> Bool {
        executeWithCurrentTextAndNewTextAndDisplayedTextTypeCallsCount += 1
        executeWithCurrentTextAndNewTextAndDisplayedTextTypeReceivedArguments = (currentText: currentText, newText: newText, displayedTextType: displayedTextType)
        executeWithCurrentTextAndNewTextAndDisplayedTextTypeReceivedInvocations.append((currentText: currentText, newText: newText, displayedTextType: displayedTextType))
        return _executeWithCurrentTextAndNewTextAndDisplayedTextType.map({ $0(currentText, newText, displayedTextType) }) ?? executeWithCurrentTextAndNewTextAndDisplayedTextTypeReturnValue
    }

    // MARK: - execute

    public var executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeCallsCount = 0
    public var executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeCalled: Bool {
        return executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeCallsCount > 0
    }
    public var executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReceivedArguments: (currentAttributedText: AttributedStringEither?, newAttributedText: AttributedStringEither?, displayedTextType: DisplayedTextType)?
    public var executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReceivedInvocations: [(currentAttributedText: AttributedStringEither?, newAttributedText: AttributedStringEither?, displayedTextType: DisplayedTextType)] = []
    public var executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReturnValue: Bool = false
    public var _executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextType: ((AttributedStringEither?, AttributedStringEither?, DisplayedTextType) -> Bool)?
    public func execute(currentAttributedText: AttributedStringEither?, newAttributedText: AttributedStringEither?, displayedTextType: DisplayedTextType) -> Bool {
        executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeCallsCount += 1
        executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReceivedArguments = (currentAttributedText: currentAttributedText, newAttributedText: newAttributedText, displayedTextType: displayedTextType)
        executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReceivedInvocations.append((currentAttributedText: currentAttributedText, newAttributedText: newAttributedText, displayedTextType: displayedTextType))
        return _executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextType.map({ $0(currentAttributedText, newAttributedText, displayedTextType) }) ?? executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReturnValue
    }

    // MARK: Reset 

    public func reset() {
        executeWithCurrentTextAndNewTextAndDisplayedTextTypeCallsCount = 0
        executeWithCurrentTextAndNewTextAndDisplayedTextTypeReceivedArguments = nil
        executeWithCurrentTextAndNewTextAndDisplayedTextTypeReceivedInvocations = []
        executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeCallsCount = 0
        executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReceivedArguments = nil
        executeWithCurrentAttributedTextAndNewAttributedTextAndDisplayedTextTypeReceivedInvocations = []
    }
}

@_spi(SPI) public final class GetDisplayedTextTypeUseCaseableGeneratedMock: SparkInternal.GetDisplayedTextTypeUseCaseable, ResetGeneratedMock {


    // MARK: - Initialization

    public init() {}

    // MARK: - execute

    public var executeWithTextAndAttributedTextCallsCount = 0
    public var executeWithTextAndAttributedTextCalled: Bool {
        return executeWithTextAndAttributedTextCallsCount > 0
    }
    public var executeWithTextAndAttributedTextReceivedArguments: (text: String?, attributedText: AttributedStringEither?)?
    public var executeWithTextAndAttributedTextReceivedInvocations: [(text: String?, attributedText: AttributedStringEither?)] = []
    public var executeWithTextAndAttributedTextReturnValue: DisplayedTextType!
    public var _executeWithTextAndAttributedText: ((String?, AttributedStringEither?) -> DisplayedTextType)?
    public func execute(text: String?, attributedText: AttributedStringEither?) -> DisplayedTextType {
        executeWithTextAndAttributedTextCallsCount += 1
        executeWithTextAndAttributedTextReceivedArguments = (text: text, attributedText: attributedText)
        executeWithTextAndAttributedTextReceivedInvocations.append((text: text, attributedText: attributedText))
        return _executeWithTextAndAttributedText.map({ $0(text, attributedText) }) ?? executeWithTextAndAttributedTextReturnValue
    }

    // MARK: - execute

    public var executeWithTextCallsCount = 0
    public var executeWithTextCalled: Bool {
        return executeWithTextCallsCount > 0
    }
    public var executeWithTextReceivedText: String?
    public var executeWithTextReceivedInvocations: [String?] = []
    public var executeWithTextReturnValue: DisplayedTextType!
    public var _executeWithText: ((String?) -> DisplayedTextType)?
    public func execute(text: String?) -> DisplayedTextType {
        executeWithTextCallsCount += 1
        executeWithTextReceivedText = text
        executeWithTextReceivedInvocations.append(text)
        return _executeWithText.map({ $0(text) }) ?? executeWithTextReturnValue
    }

    // MARK: - execute

    public var executeWithAttributedTextCallsCount = 0
    public var executeWithAttributedTextCalled: Bool {
        return executeWithAttributedTextCallsCount > 0
    }
    public var executeWithAttributedTextReceivedAttributedText: AttributedStringEither?
    public var executeWithAttributedTextReceivedInvocations: [AttributedStringEither?] = []
    public var executeWithAttributedTextReturnValue: DisplayedTextType!
    public var _executeWithAttributedText: ((AttributedStringEither?) -> DisplayedTextType)?
    public func execute(attributedText: AttributedStringEither?) -> DisplayedTextType {
        executeWithAttributedTextCallsCount += 1
        executeWithAttributedTextReceivedAttributedText = attributedText
        executeWithAttributedTextReceivedInvocations.append(attributedText)
        return _executeWithAttributedText.map({ $0(attributedText) }) ?? executeWithAttributedTextReturnValue
    }

    // MARK: Reset 

    public func reset() {
        executeWithTextAndAttributedTextCallsCount = 0
        executeWithTextAndAttributedTextReceivedArguments = nil
        executeWithTextAndAttributedTextReceivedInvocations = []
        executeWithTextCallsCount = 0
        executeWithTextReceivedText = nil 
        executeWithTextReceivedInvocations = []
        executeWithAttributedTextCallsCount = 0
        executeWithAttributedTextReceivedAttributedText = nil 
        executeWithAttributedTextReceivedInvocations = []
    }
}

// MARK: - Reset

@_spi(SPI) public protocol ResetGeneratedMock {
    func reset()
}
