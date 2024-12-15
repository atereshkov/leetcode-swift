import XCTest

@testable import leetcode

class KokoEatingBananasTests: XCTestCase {

    // Option 1 (my)

    func test875_Koko_Eating_BananasTests1() {
        XCTAssertEqual(P875().minEatingSpeed([3,6,7,11], 8), 4)
        XCTAssertEqual(P875().minEatingSpeed([30,11,23,4,20], 5), 30)
        XCTAssertEqual(P875().minEatingSpeed([30,11,23,4,20], 6), 23)
    }

    // Option 2 (neetcode)

    func test875_Koko_Eating_BananasTests2() {
        XCTAssertEqual(P875().minEatingSpeed2([3,6,7,11], 8), 4)
        XCTAssertEqual(P875().minEatingSpeed2([30,11,23,4,20], 5), 30)
        XCTAssertEqual(P875().minEatingSpeed2([30,11,23,4,20], 6), 23)
    }
}
