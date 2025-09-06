import XCTest

@testable import leetcode

class Is_SubsequenceTestsTests: XCTestCase {

    // Option 1 (my)

    func test392_Is_SubsequenceTests1() {
        XCTAssertEqual(P392().isSubsequence("abc", "ahbgdc"), true)
        XCTAssertEqual(P392().isSubsequence("axc", "ahbgdc"), false)
        XCTAssertEqual(P392().isSubsequence("ace", "abcde"), true)
        XCTAssertEqual(P392().isSubsequence("aec", "abcde"), false)
        XCTAssertEqual(P392().isSubsequence("axc", ""), false)
        XCTAssertEqual(P392().isSubsequence("", ""), true)
        XCTAssertEqual(P392().isSubsequence("", "axc"), true)
    }

    // Option 2 (neetcode)

    func test392_Is_SubsequenceTests2() {
        XCTAssertEqual(P392().isSubsequence2("abc", "ahbgdc"), true)
        XCTAssertEqual(P392().isSubsequence2("axc", "ahbgdc"), false)
        XCTAssertEqual(P392().isSubsequence2("ace", "abcde"), true)
        XCTAssertEqual(P392().isSubsequence2("aec", "abcde"), false)
        XCTAssertEqual(P392().isSubsequence2("axc", ""), false)
        XCTAssertEqual(P392().isSubsequence2("", ""), true)
        XCTAssertEqual(P392().isSubsequence2("", "axc"), true)
        XCTAssertEqual(P392().isSubsequence2("b", "abc"), true)
    }
}
