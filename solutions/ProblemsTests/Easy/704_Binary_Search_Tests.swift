import XCTest

@testable import leetcode

class BinarySearchTests: XCTestCase {

    // Option 1 (my)

    func test704_Binary_SearchTests1() {
        XCTAssertEqual(P704().search1([-1, 0, 3, 5, 9, 12], 9), 4)
        XCTAssertEqual(P704().search1([-1, 0, 3, 5, 9, 12], 2), -1)
    }

    // Option 2 (neetcode)

    func test704_Binary_SearchTests2() {
        XCTAssertEqual(P704().search2([-1, 0, 3, 5, 9, 12], 9), 4)
        XCTAssertEqual(P704().search2([-1, 0, 3, 5, 9, 12], 2), -1)
    }
}
