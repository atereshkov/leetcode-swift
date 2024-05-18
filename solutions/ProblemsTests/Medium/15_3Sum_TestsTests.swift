import XCTest

@testable import leetcode

class ThreeSumTests: XCTestCase {

    // Option 1. Dups + insufficient

    func test15_3Sum_Tests1() {
        XCTAssertEqual(P15().threeSum([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]])
        XCTAssertEqual(P15().threeSum([0, 1, 1]), [])
        XCTAssertEqual(P15().threeSum([0, 0, 0]), [[0, 0, 0]])
    }

    // Option 2. NC

    func test15_3Sum_Tests2() {
        XCTAssertEqual(P15().threeSum2([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]])
        XCTAssertEqual(P15().threeSum2([0, 1, 1]), [])
        XCTAssertEqual(P15().threeSum2([0, 0, 0]), [[0, 0, 0]])
        XCTAssertEqual(P15().threeSum2([0, 0, 0, 0]), [[0, 0, 0]])
    }
}
