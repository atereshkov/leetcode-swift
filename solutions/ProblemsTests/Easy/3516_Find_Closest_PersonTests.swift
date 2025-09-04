import XCTest

@testable import leetcode

class Find_Closest_PersonTests: XCTestCase {

    // Option 1

    func test3516_Find_Closest_PersonTestsTests1() {
        XCTAssertEqual(P3516().findClosest1(2, 7, 4), 1)
        XCTAssertEqual(P3516().findClosest1(2, 5, 6), 2)
        XCTAssertEqual(P3516().findClosest1(1, 5, 3), 0)
    }

    // Option 2

    func test3516_Find_Closest_PersonTestsTests2() {
        XCTAssertEqual(P3516().findClosest2(2, 7, 4), 1)
        XCTAssertEqual(P3516().findClosest2(2, 5, 6), 2)
        XCTAssertEqual(P3516().findClosest2(1, 5, 3), 0)
    }
}
