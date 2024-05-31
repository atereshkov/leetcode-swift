import XCTest

@testable import leetcode

class Valid_Parentheses_Tests: XCTestCase {

    // Option 1

    func test20_Valid_ParenthesesTests1() {
        XCTAssertEqual(P20().isValid("()"), true)
        XCTAssertEqual(P20().isValid("()[]{}"), true)
        XCTAssertEqual(P20().isValid("(]"), false)
    }

    // Option 2

    func test20_Valid_ParenthesesTests2() {
        XCTAssertEqual(P20().isValid2("()"), true)
        XCTAssertEqual(P20().isValid2("()[]{}"), true)
        XCTAssertEqual(P20().isValid2("(]"), false)
    }
}
