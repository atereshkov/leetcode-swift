import XCTest

@testable import leetcode

class Evaluate_Reverse_Polish_Notation_Tests: XCTestCase {

    // Option 1

    func test150_Evaluate_Reverse_Polish_NotationTests1() {
        XCTAssertEqual(P150().evalRPN(["2","1","+","3","*"]), 9)
        XCTAssertEqual(P150().evalRPN(["4","13","5","/","+"]), 6)
        XCTAssertEqual(P150().evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]), 22)
    }

    // Option 2

    func test150_Evaluate_Reverse_Polish_NotationTests2() {
        XCTAssertEqual(true, true)
    }
}
