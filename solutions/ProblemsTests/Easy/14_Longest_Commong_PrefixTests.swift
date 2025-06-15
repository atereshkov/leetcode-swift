import XCTest

@testable import leetcode

class Longest_Commong_PrefixTestsTests: XCTestCase {

    // Option 1

    func test14_Longest_Commong_PrefixTests1() {
        XCTAssertEqual(P14().longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(P14().longestCommonPrefix(["dog","racecar","car"]), "")
        XCTAssertEqual(P14().longestCommonPrefix(["ab", "a"]), "a")
    }

    // Option 2

    func test14_Longest_Commong_PrefixTests2() {
        XCTAssertEqual(true, true)
    }
}
