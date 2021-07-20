import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(QitTests.allTests),
        testCase(UIButtonAllStatesTests.allTests),
        testCase(UIViewPinTests.allTests)
    ]
}
#endif
