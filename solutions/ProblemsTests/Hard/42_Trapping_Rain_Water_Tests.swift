import XCTest

@testable import leetcode

class Trapping_Rain_Water_Tests: XCTestCase {

    // Option 1

    func test42_Trapping_Rain_WaterTests1() {
        XCTAssertEqual(P42().trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
        XCTAssertEqual(P42().trap([4, 2, 0, 3, 2, 5]), 9)
    }

    // Option 2

    func test42_Trapping_Rain_WaterTests2() {
        XCTAssertEqual(P42().trap2([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
        XCTAssertEqual(P42().trap2([4, 2, 0, 3, 2, 5]), 9)
    }
}
