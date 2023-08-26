import XCTest

class ContainsDuplicateTests: XCTestCase {
    func testContainsDuplicate1() {
        XCTAssertTrue(containsDuplicate([1,2,3,1]))
        XCTAssertTrue(containsDuplicate2([1,2,3,1]))
    }

    func testContainsDuplicate2() {
        XCTAssertFalse(containsDuplicate([1,2,3,4]))
        XCTAssertFalse(containsDuplicate2([1,2,3,4]))
    }

    func testContainsDuplicate3() {
        XCTAssertTrue(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
        XCTAssertTrue(containsDuplicate2([1,1,1,3,3,4,3,2,4,2]))
    }
}
