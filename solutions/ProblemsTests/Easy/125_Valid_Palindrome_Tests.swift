import XCTest

class ValidPalindromeTests: XCTestCase {
    func testIsPalindrome1() {
        XCTAssertEqual(isPalindrome("A man, a plan, a canal: Panama"), true)
    }

    func testIsPalindrome2() {
        XCTAssertEqual(isPalindrome("race a car"), false)
    }

    func testIsPalindrome3() {
        XCTAssertEqual(isPalindrome(" "), true)
    }
}
