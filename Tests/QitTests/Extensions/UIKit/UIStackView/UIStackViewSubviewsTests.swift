//
//  UIStackViewSubviewsTests.swift
//  Qit
//
//  Created by Alexandre Nussbaumer on 06.09.21.
//

import XCTest
@testable import Qit

final class UIStackViewSubviewsTests: XCTestCase {

    func test_stackView_removeAllArrangedSubviews() {
        let stackView = UIStackView()

        for _ in 0..<5 {
            let label = UILabel()
            stackView.addArrangedSubview(label)
        }

        XCTAssertEqual(stackView.arrangedSubviews.count, 5)

        stackView.removeAllArrangedSubviews()
        XCTAssertEqual(stackView.arrangedSubviews.count, 0)
    }
}
