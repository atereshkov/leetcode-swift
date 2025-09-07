import XCTest

@testable import leetcode

class Merge_Sorted_ArrayTestsTests: XCTestCase {

    // Option 1

    func test88_Merge_Sorted_ArrayTests1() {
        var result1 = [1,2,3,0,0,0]
        P88().merge(&result1, 3, [2,5,6], 3)
        XCTAssertEqual(result1, [1,2,2,3,5,6])

        var result2 = [1]
        P88().merge(&result2, 1, [], 0)
        XCTAssertEqual(result2, [1])

        var result3 = [0]
        P88().merge(&result3, 0, [1], 1)
        XCTAssertEqual(result3, [1])

        var result4 = [2,0]
        P88().merge(&result4, 1, [1], 1)
        XCTAssertEqual(result4, [1,2])

        var result5 = [4,5,6,0,0,0]
        P88().merge(&result5, 3, [1,2,3], 3)
        XCTAssertEqual(result5, [1,2,3,4,5,6])
    }

    // Option 2

    func test88_Merge_Sorted_ArrayTests2() {
        var result1 = [1,2,3,0,0,0]
        P88().merge2(&result1, 3, [2,5,6], 3)
        XCTAssertEqual(result1, [1,2,2,3,5,6])

        var result2 = [1]
        P88().merge2(&result2, 1, [], 0)
        XCTAssertEqual(result2, [1])

        var result3 = [0]
        P88().merge2(&result3, 0, [1], 1)
        XCTAssertEqual(result3, [1])

        var result4 = [2,0]
        P88().merge2(&result4, 1, [1], 1)
        XCTAssertEqual(result4, [1,2])

        var result5 = [4,5,6,0,0,0]
        P88().merge2(&result5, 3, [1,2,3], 3)
        XCTAssertEqual(result5, [1,2,3,4,5,6])
    }
}
