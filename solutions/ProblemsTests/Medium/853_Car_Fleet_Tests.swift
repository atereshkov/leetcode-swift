import XCTest

@testable import leetcode

class Car_FleetTestsTests: XCTestCase {

    // Option 1

    func test853_Car_FleetTests1() {
        XCTAssertEqual(P853().carFleet(12, [10,8,0,5,3], [2,4,1,1,3]), 3)
        XCTAssertEqual(P853().carFleet(10, [3], [3]), 1)
        XCTAssertEqual(P853().carFleet(100, [0,2,4], [4,2,1]), 1)
    }

    // Option 2

    func test853_Car_FleetTests2() {
        XCTAssertEqual(true, true)
    }
}
