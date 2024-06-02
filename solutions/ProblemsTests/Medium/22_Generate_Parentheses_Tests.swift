import XCTest

@testable import leetcode

class GenerateParenthesesTests: XCTestCase {
    
    // Option 1

    func testGenerateParenthesis1() {
        XCTAssertEqual(P22().generateParenthesis(1), ["()"])
        XCTAssertEqual(P22().generateParenthesis(3), ["((()))", "(()())", "(())()", "()(())", "()()()"])
    }
}
