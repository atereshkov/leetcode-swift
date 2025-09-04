import XCTest

@testable import leetcode

class Find_the_Index_of_the_First_Occurrence_in_a_StringTestsTests: XCTestCase {

    // Option 1

    func test28_Find_the_Index_of_the_First_Occurrence_in_a_StringTests1() {
//        XCTAssertEqual(P28().strStr("sadcool123", "cool"), 3)
//        XCTAssertEqual(P28().strStr("sadbutsad", "sad"), 0)
        XCTAssertEqual(P28().strStr("leetcode", "leeto"), -1)
    }

    // Option 2

    func test28_Find_the_Index_of_the_First_Occurrence_in_a_StringTests2() {
        XCTAssertEqual(P28().strStr("sadbutsad", "sad"), 0)
        XCTAssertEqual(P28().strStr("leetcode", "leeto"), -1)
    }
}
