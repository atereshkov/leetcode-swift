import XCTest

@testable import leetcode

class ValidPalindromeTests: XCTestCase {

    // Option 1

    func testIsPalindrome1() {
        XCTAssertEqual(isPalindrome("A man, a plan, a canal: Panama"), true)
        XCTAssertEqual(isPalindrome("race a car"), false)
        XCTAssertEqual(isPalindrome(" "), true)
    }

    // Option 2

    func testIsPalindrome2() {
        XCTAssertEqual(isPalindrome2("A man, a plan, a canal: Panama"), true)
        XCTAssertEqual(isPalindrome2("race a car"), false)
        XCTAssertEqual(isPalindrome2(" "), true)
    }
}
