import XCTest

@testable import leetcode

class ContainerWithMostWaterTests: XCTestCase {

    // Option 1

    func test11_Container_With_Most_Water_Tests1() {
        XCTAssertEqual(P11().maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
        XCTAssertEqual(P11().maxArea([1, 1]), 1)
        XCTAssertEqual(P11().maxArea([1, 2, 4, 3]), 4)
    }

    // Option 2

    func test11_Container_With_Most_Water_Tests2() {
        XCTAssertEqual(P11().maxArea2([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
        XCTAssertEqual(P11().maxArea2([1, 1]), 1)
        XCTAssertEqual(P11().maxArea2([1, 2, 4, 3]), 4)
    }
}
