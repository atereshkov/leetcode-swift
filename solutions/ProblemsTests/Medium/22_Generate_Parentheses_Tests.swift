import XCTest

@testable import leetcode

class GenerateParenthesesTests: XCTestCase {
    func testGenerateParenthesis1() {
        let res = generateParenthesis(1)
        XCTAssertEqual(res, ["()"])
    }
}
