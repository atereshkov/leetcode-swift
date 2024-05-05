import XCTest

@testable import leetcode

class TwoSumIIInputArrayIsSortedTests: XCTestCase {

    // Option 1

    func testTwoSumIIInputArrayIsSorted1() {
        XCTAssertEqual(P167().twoSum([1, 2, 3, 5, 6], 5), [2, 3])
        XCTAssertEqual(P167().twoSum([2, 7, 11, 15], 9), [1, 2])
        XCTAssertEqual(P167().twoSum([2, 3, 4], 6), [1, 3])
        XCTAssertEqual(P167().twoSum([-1, 0], -1), [1, 2])
    }

    // Option 2

    func testTwoSumIIInputArrayIsSorted2() {
        XCTAssertEqual(P167().twoSum2([1, 2, 3, 5, 6], 5), [2, 3])
        XCTAssertEqual(P167().twoSum2([2, 7, 11, 15], 9), [1, 2])
        XCTAssertEqual(P167().twoSum2([2, 3, 4], 6), [1, 3])
        XCTAssertEqual(P167().twoSum2([-1, 0], -1), [1, 2])
    }
}
