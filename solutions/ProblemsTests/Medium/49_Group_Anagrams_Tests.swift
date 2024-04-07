import XCTest

@testable import leetcode

class GroupAnagramTests: XCTestCase {
    func testGroupAnagrams1() {
        let array = ["eat","tea","tan","ate","nat","bat"]
        XCTAssertTrue(groupAnagrams(array).contains(["eat", "tea", "ate"]))
        XCTAssertTrue(groupAnagrams(array).contains(["tan", "nat"]))
        XCTAssertTrue(groupAnagrams(array).contains(["bat"]))
        XCTAssertEqual(groupAnagrams(array).count, 3)
    }

    func testGroupAnagrams2() {
        XCTAssertEqual(groupAnagrams([""]), [[""]])
    }

    func testGroupAnagrams3() {
        XCTAssertEqual(groupAnagrams(["a"]), [["a"]])
    }
}
