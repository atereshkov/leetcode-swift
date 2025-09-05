import XCTest

@testable import leetcode

class Find_the_Index_of_the_First_Occurrence_in_a_StringTestsTests: XCTestCase {

    // Option 1

    func test28_Find_the_Index_of_the_First_Occurrence_in_a_StringTests1() {
        XCTAssertEqual(P28().strStr("sadcool123", "cool"), 3)
        XCTAssertEqual(P28().strStr("sadbutsad", "sad"), 0)
        XCTAssertEqual(P28().strStr("leetcode", "leeto"), -1)
        XCTAssertEqual(P28().strStr("mississippi", "issipi"), -1)
        XCTAssertEqual(P28().strStr("a", "a"), 0)
    }

    // Option 2

    func test28_Find_the_Index_of_the_First_Occurrence_in_a_StringTests2() {
        XCTAssertEqual(P28().strStr2("sadcool123", "cool"), 3)
        XCTAssertEqual(P28().strStr2("sadbutsad", "sad"), 0)
        XCTAssertEqual(P28().strStr2("leetcode", "leeto"), -1)
        XCTAssertEqual(P28().strStr2("mississippi", "issipi"), -1)
        XCTAssertEqual(P28().strStr2("a", "a"), 0)
    }
}
