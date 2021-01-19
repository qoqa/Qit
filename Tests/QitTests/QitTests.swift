import XCTest
@testable import Qit

final class QitTests: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Qit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
