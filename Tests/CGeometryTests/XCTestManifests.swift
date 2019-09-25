import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    [
        testCase(CGeometryTests.allTests),
    ]
}
#endif
