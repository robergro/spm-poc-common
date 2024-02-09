//
//  SnapshotTestCaseTracker.swift
//  SparkCoreTests
//
//  Created by janniklas.freundt.ext on 13.04.23.
//  Copyright © 2023 Adevi  nta. All rights reserved.
//

import XCTest

/// `TestCaseTracker` is used to keep the track of the current test suite. It creates a sub-directory for the current test case classname for snapshot-images.
@_spi(SPI) public final class SnapshotTestCaseTracker: NSObject, XCTestObservation {
    // MARK: - Shared instance

    public static let shared = SnapshotTestCaseTracker()

    // MARK: - Properties

    public private(set) var currentTestCase: XCTestCase!
    private var didSubscribe = false

    // MARK: - Methods

    public func snapshotDirectory(for file: StaticString) -> String {
        let snapshotDirectory = ProcessInfo.processInfo.environment["SNAPSHOT_REFERENCE_DIR"]! + "/"
        guard let url = URL(string: snapshotDirectory) else { return "" }

        return url.appendingPathComponent(self.currentTestCase.testClassName).path
    }

    public func testName(_ identifier: String? = nil) -> String {
        [self.currentTestCase.testMethodName, identifier]
            .compactMap { $0 }
            .filter { !$0.isEmpty }
            .joined(separator: "_")
    }

    // MARK: - Subscription

    public func subscribe() {
        guard !self.didSubscribe else {
            return
        }

        defer { self.didSubscribe = true }

        XCTestObservationCenter.shared.addTestObserver(self)
    }

    @objc public func testCaseWillStart(_ testCase: XCTestCase) {
        self.currentTestCase = testCase
    }

    @objc public func testCaseDidFinish(_ testCase: XCTestCase) {
        self.currentTestCase = nil
    }
}

// MARK: - Private extensions

private extension String {
    // MARK: - Initialize

    init(_ staticString: StaticString) {
        self = staticString.withUTF8Buffer {
            String(decoding: $0, as: UTF8.self)
        }
    }
}

private extension XCTestCase {
    // MARK: - Methods

    var testClassName: String {
        String(self.sanitizedName.split(separator: " ").first!)
    }

    var testMethodName: String {
        String(self.sanitizedName.split(separator: " ").last!)
    }

    // MARK: - Private

    private var sanitizedName: String {
        let fullName = name
        let characterSet = CharacterSet(charactersIn: "[]+-")
        let name = fullName.components(separatedBy: characterSet).joined()

        if let quickClass = NSClassFromString("QuickSpec"), isKind(of: quickClass) {
            let className = String(describing: type(of: self))
            if let range = name.range(of: className), range.lowerBound == name.startIndex {
                return name
                    .replacingCharacters(in: range, with: "")
                    .trimmingCharacters(in: .whitespacesAndNewlines)
            }
        }

        return name
    }
}
