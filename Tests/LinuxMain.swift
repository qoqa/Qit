import XCTest

import QitTests

var tests = [XCTestCaseEntry]()
tests += QitTests.allTests()
XCTMain(tests)
