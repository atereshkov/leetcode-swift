import XCTest

@testable import leetcode

class ProductOfArrayExceptSelfTests: XCTestCase {
    func testProductOfArrayExceptSelfTests1() {
        XCTAssertEqual(productExceptSelf([1, 2, 3, 4]), [24, 12, 8, 6])
    }

    func testProductOfArrayExceptSelfTests2() {
        XCTAssertEqual(productExceptSelf([-1, 1, 0, -3, 3]), [0, 0, 9, 0, 0])
    }
}
