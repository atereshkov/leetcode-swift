import XCTest

@testable import leetcode

class Remove_ElementTestsTests: XCTestCase {

    // Option 1

    func test27_Remove_ElementTests1() {
        var nums1 = [3, 2, 2, 3]
        XCTAssertEqual(P27().removeElement(&nums1, 3), 2)
        var nums2 = [0,1,2,2,3,0,4,2]
        XCTAssertEqual(P27().removeElement(&nums2, 2), 5)
    }

    // Option 2

    func test27_Remove_ElementTests2() {
        var nums1 = [3, 2, 2, 3]
        XCTAssertEqual(P27().removeElement2(&nums1, 3), 2)
//        XCTAssertEqual(nums1, [2, 2, 3, 3])
        var nums2 = [0,1,2,2,3,0,4,2]
        XCTAssertEqual(P27().removeElement2(&nums2, 2), 5)
//        XCTAssertEqual(nums2, [0, 1, 3, 0, 4, 2, 2, 2])
    }
}
