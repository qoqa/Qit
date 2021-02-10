//
//  UIButtonAllStatesTests.swift
//  Qit
//
//  Created by Alexandre on 10.02.21.
//
import XCTest
@testable import Qit

final class UIButtonAllStatesTests: XCTestCase {

    func testButtonTitleColorForAllStates() {
        let titleColor = UIColor.red

        let button = UIButton(frame: .zero)
        button.setTitleColorForAllStates(titleColor)

        XCTAssertEqual(button.currentTitleColor, titleColor)

        button.isEnabled = false
        XCTAssertEqual(button.currentTitleColor, titleColor)

        button.isEnabled = true
        button.isHighlighted = true
        XCTAssertEqual(button.currentTitleColor, titleColor)

        button.isSelected = true
        XCTAssertEqual(button.currentTitleColor, titleColor)
    }

    func testButtonTitleForAllStates() {
        let title = "Test"

        let button = UIButton(frame: .zero)
        button.setTitleForAllStates(title)

        XCTAssertEqual(button.currentTitle, title)

        button.isEnabled = false
        XCTAssertEqual(button.currentTitle, title)

        button.isEnabled = true
        button.isHighlighted = true
        XCTAssertEqual(button.currentTitle, title)

        button.isSelected = true
        XCTAssertEqual(button.currentTitle, title)
    }

    func testButtonImageForAllStates() {
        UIGraphicsBeginImageContextWithOptions(CGRect(x: 0, y: 0, width: 0, height: 0).size, false, 0.0)

        let imageContext = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = imageContext?.cgImage else {
            XCTFail("Failed to get cg image")
            return }

        let image = UIImage(cgImage: cgImage)

        let button = UIButton(frame: .zero)
        button.setImageForAllStates(image)

        XCTAssertEqual(button.image(for: .normal), image)

        button.isEnabled = false
        XCTAssertEqual(button.image(for: .disabled), image)

        button.isEnabled = true
        button.isHighlighted = true
        XCTAssertEqual(button.image(for: .highlighted), image)

        button.isSelected = true
        XCTAssertEqual(button.image(for: .selected), image)
    }

    static var allTests = [
        ("testButtonTitleColorForAllStates", testButtonTitleColorForAllStates),
        ("testButtonTitleForAllStates", testButtonTitleForAllStates),
        ("testButtonImageForAllStates", testButtonImageForAllStates)
    ]
}
