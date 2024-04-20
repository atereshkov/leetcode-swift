import XCTest

@testable import leetcode

class ProductOfArrayExceptSelfTests: XCTestCase {
    func testProductOfArrayExceptSelfTests1() {
        XCTAssertEqual(productExceptSelf([1, 2, 3, 4]), [24, 12, 8, 6])
        XCTAssertEqual(productExceptSelf2([1, 2, 3, 4]), [24, 12, 8, 6])
    }

    func testProductOfArrayExceptSelfTests2() {
        XCTAssertEqual(productExceptSelf([-1, 1, 0, -3, 3]), [0, 0, 9, 0, 0])
        XCTAssertEqual(productExceptSelf2([-1, 1, 0, -3, 3]), [0, 0, 9, 0, 0])
    }

    func testProductOfArrayExceptSelfTests3() {
        XCTAssertEqual(productExceptSelf([4, 3, 2, 1, 2]), [12, 16, 24, 48, 24])
        XCTAssertEqual(productExceptSelf2([4, 3, 2, 1, 2]), [12, 16, 24, 48, 24])
    }
}
