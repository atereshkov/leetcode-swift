import XCTest

@testable import leetcode

class LongestConsecutiveSequenceTests: XCTestCase {

    // Option 1

    func testLongestConsecutiveSequence1() {
        XCTAssertEqual(longestConsecutive([100, 4, 200, 1, 3, 2]), 4)
        XCTAssertEqual(longestConsecutive([4, 1, 3, 2, 0, 0, 0, 1, 1]), 5)
        XCTAssertEqual(longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]), 9)
    }

    // Option 2

    func testLongestConsecutiveSequence2() {
        XCTAssertEqual(longestConsecutive2([100, 4, 200, 1, 3, 2]), 4)
        XCTAssertEqual(longestConsecutive2([4, 1, 3, 2, 0, 0, 0, 1, 1]), 5)
        XCTAssertEqual(longestConsecutive2([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]), 9)
        XCTAssertEqual(longestConsecutive2([]), 0)
        XCTAssertEqual(longestConsecutive2([0]), 1)
        XCTAssertEqual(longestConsecutive2([9, 1, 4, 7, 3, -1, 0, 5, 8, -1, 6]), 7)
    }
}
