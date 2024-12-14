import XCTest

@testable import leetcode

class Search2DMatrixTests: XCTestCase {

    // Option 1 (my)

    func test74_Search_2D_MatrixTests1() {
        XCTAssertEqual(P74().searchMatrix1([[1,3,5,7], [10,11,16,20], [23,30,34,60]], 3), true)
        XCTAssertEqual(P74().searchMatrix1([[1,3,5,7], [10,11,16,20], [23,30,34,60]], 13), false)
        XCTAssertEqual(P74().searchMatrix1([[1], [3]], 3), true)
    }

    // Option 2 (my)

    func test74_Search_2D_MatrixTests2() {
        XCTAssertEqual(P74().searchMatrix2([[1,3,5,7], [10,11,16,20], [23,30,34,60]], 3), true)
        XCTAssertEqual(P74().searchMatrix2([[1,3,5,7], [10,11,16,20], [23,30,34,60]], 13), false)
        XCTAssertEqual(P74().searchMatrix2([[1], [3]], 3), true)
    }

    // Option 3 (neetcode)

    func test74_Search_2D_MatrixTests3() {
        XCTAssertEqual(P74().searchMatrix3([[1,3,5,7], [10,11,16,20], [23,30,34,60]], 3), true)
        XCTAssertEqual(P74().searchMatrix3([[1,3,5,7], [10,11,16,20], [23,30,34,60]], 13), false)
        XCTAssertEqual(P74().searchMatrix3([[1], [3]], 3), true)
    }
}
