import XCTest

class ValidAnagramTests: XCTestCase {
    func testIsAnagram1() {
        XCTAssertTrue(isAnagram("anagram", "nagaram"))
        XCTAssertTrue(isAnagram2("anagram", "nagaram"))
    }

    func testIsAnagram2() {
        XCTAssertFalse(isAnagram("rat", "cat"))
        XCTAssertFalse(isAnagram2("rat", "cat"))
    }

    func testIsAnagram3() {
        XCTAssertFalse(isAnagram("string", "str"))
        XCTAssertFalse(isAnagram2("string", "str"))
    }

    func testIsAnagram4() {
        XCTAssertFalse(isAnagram("foo", "bar"))
        XCTAssertFalse(isAnagram2("foo", "bar"))
    }

    func testIsAnagram5() {
        XCTAssertFalse(isAnagram("aa", "a"))
        XCTAssertFalse(isAnagram2("aa", "a"))
    }

    func testIsAnagram6() {
        XCTAssertFalse(isAnagram("aacc", "ccac"))
        XCTAssertFalse(isAnagram2("aacc", "ccac"))
    }

    func testIsAnagram7() {
        XCTAssertFalse(isAnagram("a", "ab"))
        XCTAssertFalse(isAnagram2("a", "ab"))
    }
}
