import XCTest

@testable import leetcode

class TwoSumTests: XCTestCase {
    func testTwoSum() {
        XCTAssertEqual(twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(twoSum2([2, 7, 11, 15], 9), [0, 1])
    }

    func testTwoSum2() {
        XCTAssertEqual(twoSum([3, 2, 3], 6), [0, 2])
        XCTAssertEqual(twoSum2([3, 2, 3], 6), [0, 2])
    }

    func testTwoSum3() {
        XCTAssertEqual(twoSum([2, 5, 5, 11], 10), [1, 2])
        XCTAssertEqual(twoSum2([2, 5, 5, 11], 10), [1, 2])
    }

    func testTwoSum4() {
        XCTAssertEqual(twoSum([-1, -2, -3, -4, -5], -8), [2, 4])
        XCTAssertEqual(twoSum2([-1, -2, -3, -4, -5], -8), [2, 4])
    }

    func testTwoSum5() {
        XCTAssertEqual(twoSum([2, 5, 12, 5, 11], 10), [1, 3])
        XCTAssertEqual(twoSum2([2, 5, 12, 5, 11], 10), [1, 3])
    }
}
