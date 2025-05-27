import XCTest

@testable import leetcode

class Divisible_and_Non_divisible_Sums_DifferenceTests: XCTestCase {

    // Option 1

    func test2894_Divisible_and_Non_divisible_Sums_DifferenceTests1() {
        XCTAssertEqual(P2894().differenceOfSums(10, 3), 19)
        XCTAssertEqual(P2894().differenceOfSums(5, 6), 15)
        XCTAssertEqual(P2894().differenceOfSums(5, 1), -15)
    }
}
