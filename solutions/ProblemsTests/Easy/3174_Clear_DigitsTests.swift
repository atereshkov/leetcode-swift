import XCTest

@testable import leetcode

class Clear_DigitsTests: XCTestCase {

    // Option 1

    func test3174_Clear_DigitsTests1() {
        XCTAssertEqual(P3174().clearDigits("cb34"), "")
        XCTAssertEqual(P3174().clearDigits("abc"), "abc")
        XCTAssertEqual(P3174().clearDigits("12kas12kgka231sd34"), "12kk")
    }

    // Option 2

    func test3174_Clear_DigitsTests2() {
        XCTAssertEqual(true, true)
    }
}
