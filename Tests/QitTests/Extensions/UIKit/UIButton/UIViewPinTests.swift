//
//  UIViewPinTests.swift
//  Qit
//
//  Created by Alexandre on 20.07.21.
//

import XCTest
@testable import Qit

final class UIViewPinTests: XCTestCase {

    // MARK: - Properties
    let aSize = CGSize(width: 50, height: 50)

    lazy var aFrame: CGRect = {
        return CGRect(origin: .zero, size: aSize)
    }()

    lazy var aView: UIView = {
        return UIView(frame: aFrame)
    }()

    lazy var bView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Tests
    func test_pinToSuperviewEdges() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraints = bView.pinToSuperviewEdges()
        bView.layoutIfNeeded()

        XCTAssertEqual(aView.frame.size, bView.frame.size)
        for constraint in constraints {
            XCTAssertTrue(constraint.isActive)
            XCTAssertEqual(constraint.constant, 0)
        }
    }

    func test_pinToSuperviewEdges_withMargin() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraints = bView.pinToSuperviewEdges(margins: UIEdgeInsets(top: 8, left: 4, bottom: 2, right: 1))
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, CGSize(width: aSize.width - 4 - 1, height: aSize.height - 8 - 2))
        XCTAssertEqual(constraints[0].constant, 8)
        XCTAssertEqual(constraints[1].constant, 4)
        XCTAssertEqual(constraints[2].constant, -2)
        XCTAssertEqual(constraints[3].constant, -1)

        for constraint in constraints {
            XCTAssertTrue(constraint.isActive)
        }
    }

    func test_pinRightToSuperview() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinRightToSuperview()
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint?.constant)
        XCTAssertTrue(constraint?.isActive == true)
        XCTAssertEqual(constraint?.constant, 0)
        XCTAssertEqual(constraint?.firstAttribute, .right)
        XCTAssertEqual(constraint?.secondAttribute, .right)
    }

    func test_pinRightToSuperview_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinRightToSuperview(margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint?.constant, -8)
    }

    func test_pinLeftToSuperview() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinLeftToSuperview()
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint?.constant)
        XCTAssertTrue(constraint?.isActive == true)
        XCTAssertEqual(constraint?.constant, 0)
        XCTAssertEqual(constraint?.firstAttribute, .left)
        XCTAssertEqual(constraint?.secondAttribute, .left)
    }

    func test_pinLeftToSuperview_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinLeftToSuperview(margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint?.constant, 8)
    }

    func test_pinTopToSuperview() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinTopToSuperview()
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint?.constant)
        XCTAssertTrue(constraint?.isActive == true)
        XCTAssertEqual(constraint?.constant, 0)
        XCTAssertEqual(constraint?.firstAttribute, .top)
        XCTAssertEqual(constraint?.secondAttribute, .top)
    }

    func test_pinTopToSuperview_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinTopToSuperview(margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint?.constant, 8)
    }

    func test_pinBottomToSuperview() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinBottomToSuperview()
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint?.constant)
        XCTAssertTrue(constraint?.isActive == true)
        XCTAssertEqual(constraint?.constant, 0)
        XCTAssertEqual(constraint?.firstAttribute, .bottom)
        XCTAssertEqual(constraint?.secondAttribute, .bottom)
    }

    func test_pinBottomToSuperview_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinBottomToSuperview(margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint?.constant, -8)
    }

    func test_pinRightToView() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinRightToView(aView)
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint.constant)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.constant, 0)
        XCTAssertEqual(constraint.firstAttribute, .right)
        XCTAssertEqual(constraint.secondAttribute, .right)
    }

    func test_pinRightToView_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinRightToView(aView, margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint.constant, -8)
    }

    func test_pinLeftToView() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinLeftToView(aView)
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint.constant)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.constant, 0)
        XCTAssertEqual(constraint.firstAttribute, .left)
        XCTAssertEqual(constraint.secondAttribute, .left)
    }

    func test_pinLeftToView_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinLeftToView(aView, margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint.constant, 8)
    }

    func test_pinTopToView() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinTopToView(aView)
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint.constant)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.constant, 0)
        XCTAssertEqual(constraint.firstAttribute, .top)
        XCTAssertEqual(constraint.secondAttribute, .top)
    }

    func test_pinTopToView_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinTopToView(aView, margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint.constant, 8)
    }

    func test_pinBottomToView() {
        XCTAssertEqual(aView.frame, aFrame)
        XCTAssertEqual(bView.frame, .zero)

        aView.addSubview(bView)
        let constraint = bView.pinBottomToView(aView)
        bView.layoutIfNeeded()

        XCTAssertEqual(bView.frame.size, .zero)
        XCTAssertNotNil(constraint.constant)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.constant, 0)
        XCTAssertEqual(constraint.firstAttribute, .bottom)
        XCTAssertEqual(constraint.secondAttribute, .bottom)
    }

    func test_pinBottomToView_withMargin() {
        aView.addSubview(bView)
        let constraint = bView.pinBottomToView(aView, margin: 8)
        bView.layoutIfNeeded()

        XCTAssertEqual(constraint.constant, -8)
    }
}
