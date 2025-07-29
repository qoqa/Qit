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

    func test_pinToSuperviewEdges_withMargins() {
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

    static var allTests = [
        ("test_pinToSuperviewEdges", test_pinToSuperviewEdges),
        ("test_pinToSuperviewEdges_withMargins", test_pinToSuperviewEdges_withMargins),
    ]
}
