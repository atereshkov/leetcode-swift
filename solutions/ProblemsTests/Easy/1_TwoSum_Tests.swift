import XCTest

class TwoSumTests: XCTestCase {
    func testTwoSum() {
        let res = twoSum([2, 7, 11, 15], 9)
        XCTAssertEqual(res, [0, 1])
    }

    func testTwoSum2() {
        let res2 = twoSum([3, 2, 3], 6)
        XCTAssertEqual(res2, [0, 2])
    }

    func testTwoSum3() {
        let res2 = twoSum([2, 5, 5, 11], 10)
        XCTAssertEqual(res2, [1, 2])
    }

    func testTwoSum4() {
        let res2 = twoSum([-1, -2, -3, -4, -5], -8)
        XCTAssertEqual(res2, [2, 4])
    }

    func testTwoSum5() {
        let res2 = twoSum([2, 5, 12, 5, 11], 10)
        XCTAssertEqual(res2, [1, 3])
    }
}
