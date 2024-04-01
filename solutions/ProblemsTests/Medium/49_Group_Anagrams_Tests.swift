import XCTest

@testable import leetcode

class GroupAnagramTests: XCTestCase {
    func testIsAnagram212() {
        XCTAssertTrue(isAnagram("anagram", "nagaram"))
        XCTAssertTrue(isAnagram2("anagram", "nagaram"))
    }
}
