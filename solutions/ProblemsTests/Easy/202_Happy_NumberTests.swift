import XCTest

@testable import leetcode

class Happy_NumberTests: XCTestCase {

    // Option 1 (my)

    func test202_Happy_NumberTests1() {
        XCTAssertEqual(P202().isHappy(19), true)
        XCTAssertEqual(P202().isHappy(2), false)
    }

    // Option 2 (neetcode)

    func test202_Happy_NumberTests2() {
        XCTAssertEqual(P202().isHappy2(19), true)
        XCTAssertEqual(P202().isHappy2(2), false)
    }
}
