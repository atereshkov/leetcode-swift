import XCTest

@testable import leetcode

class Majority_ElementTests: XCTestCase {

    // Option 1

    func test169_Majority_ElementTests1() {
        XCTAssertEqual(P169().majorityElement([3,2,3]), 3)
        XCTAssertEqual(P169().majorityElement([2,2,1,1,1,2,2]), 2)
    }

    // Option 2

    func test169_Majority_ElementTests2() {
        XCTAssertEqual(P169().majorityElement2([3,2,3]), 3)
        XCTAssertEqual(P169().majorityElement2([2,2,1,1,1,2,2]), 2)
    }

    // Option 3

    func test169_Majority_ElementTests3() {
        XCTAssertEqual(P169().majorityElement3([3,2,3]), 3)
        XCTAssertEqual(P169().majorityElement3([2,2,1,1,1,2,2]), 2)
    }
}
