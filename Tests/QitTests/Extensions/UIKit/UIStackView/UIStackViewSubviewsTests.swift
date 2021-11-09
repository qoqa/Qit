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

    func test_stackView_removeArrangedSubviews() {
        let stackView = UIStackView()

        for _ in 0..<5 {
            let label = UILabel()
            stackView.addArrangedSubview(label)
        }

        for _ in 0..<7 {
            let button = UIButton()
            stackView.addArrangedSubview(button)
        }

        XCTAssertEqual(stackView.arrangedSubviews.count, 12)

        let labelSubViews = stackView.arrangedSubviews.filter({ $0.isKind(of: UILabel.self) })
        stackView.removeArrangedSubviews(labelSubViews)
        XCTAssertEqual(stackView.arrangedSubviews.count, 7)
    }

    static var allTests = [
        ("test_stackView_removeAllArrangedSubviews", test_stackView_removeAllArrangedSubviews),
        ("test_stackView_removeArrangedSubviews", test_stackView_removeArrangedSubviews)
    ]
}
