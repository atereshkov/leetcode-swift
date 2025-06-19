import XCTest

@testable import leetcode

class Remove_Duplicates_from_Sorted_ArrayTestsTests: XCTestCase {

    // Option 1

    func test26_Remove_Duplicates_from_Sorted_ArrayTests1() {
        var nums = [1, 1, 2]
        XCTAssertEqual(P26().removeDuplicates(&nums), 2)

        var nums2 = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(P26().removeDuplicates(&nums2), 5)

        var nums3 = [1,1]
        XCTAssertEqual(P26().removeDuplicates(&nums3), 1)
    }

    // Option 2

    func test26_Remove_Duplicates_from_Sorted_ArrayTests2() {
        var nums = [1, 1, 2]
        XCTAssertEqual(P26().removeDuplicates2(&nums), 2)

        var nums2 = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(P26().removeDuplicates2(&nums2), 5)

        var nums3 = [1,1]
        XCTAssertEqual(P26().removeDuplicates2(&nums3), 1)
    }
}
