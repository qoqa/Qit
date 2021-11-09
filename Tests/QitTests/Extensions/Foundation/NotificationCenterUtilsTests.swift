//
//  NotificationCenterUtilsTests.swift
//  Qit
//
//  Created by Michel Pinto on 09.11.21.
//

import XCTest
@testable import Qit

final class NotificationCenterUtilsTests: XCTestCase {

    private let notificationName = NSNotification.Name(rawValue: "NotificationCenterUtilsTestsNotification")
    private var selectorTriggered = false

    func test_postNotification() {
        selectorTriggered = false
        NotificationCenter.default.addObserver(self, selector: #selector(testSelector), name: notificationName)
        NotificationCenter.default.post(name: notificationName)
        XCTAssertTrue(selectorTriggered)

        selectorTriggered = false
        NotificationCenter.default.removeObserver(self, name: notificationName)
        NotificationCenter.default.post(name: notificationName)
        XCTAssertFalse(selectorTriggered)
    }
    @objc private func testSelector() {
        selectorTriggered = true
    }
}

