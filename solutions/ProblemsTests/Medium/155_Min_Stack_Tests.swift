import XCTest

@testable import leetcode

class MinStackTests: XCTestCase {
    func testMinStack1() {
        let stack = MinStack()
        stack.push(-2)
        stack.push(0)
        stack.push(-3)
        XCTAssertEqual(stack.getMin(), -3)
    }

    func testMinStack2() {
        let stack = MinStack()
        stack.push(-2)
        stack.push(0)
        stack.push(-3)
        XCTAssertEqual(stack.top(), -3)
    }

    func testMinStack3() {
        let stack = MinStack()
        stack.push(-2)
        stack.push(0)
        stack.push(-3)
        stack.pop()
        XCTAssertEqual(stack.top(), 0)
        XCTAssertEqual(stack.getMin(), -2)
    }
}
