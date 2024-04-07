import XCTest

@testable import leetcode

class TopKFrequentElementsTests: XCTestCase {
    func testTopKFrequentElements1() {
        XCTAssertEqual(topKFrequent([1, 1, 1, 2, 2, 3], 2), [1, 2])
        XCTAssertEqual(topKFrequent2([1, 1, 1, 2, 2, 3], 2), [1, 2])
    }

    func testTopKFrequentElements2() {
        XCTAssertEqual(topKFrequent([1], 1), [1])
        XCTAssertEqual(topKFrequent2([1], 1), [1])
    }

    func testTopKFrequentElements3() {
        XCTAssertEqual(topKFrequent([-1, -1], 1), [-1])
        XCTAssertEqual(topKFrequent2([-1, -1], 1), [-1])
    }
    func testTopKFrequentElements4() {
        XCTAssertEqual(topKFrequent([1, 2], 2), [1, 2])
        XCTAssertEqual(topKFrequent2([1, 2], 2), [1, 2])
    }
}
