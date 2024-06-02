import XCTest

@testable import leetcode

class Daily_Temperatures_Tests: XCTestCase {

    // Option 1

    func test739_Daily_TemperaturesTests1() {
        XCTAssertEqual(P739().dailyTemperatures([73,74,75,71,69,72,76,73]), [1,1,4,2,1,1,0,0])
        XCTAssertEqual(P739().dailyTemperatures([30,40,50,60]), [1,1,1,0])
        XCTAssertEqual(P739().dailyTemperatures([30,60,90]), [1,1,0])
    }

    // Option 2

    func test739_Daily_TemperaturesTests2() {
        XCTAssertEqual(P739().dailyTemperatures2([73,74,75,71,69,72,76,73]), [1,1,4,2,1,1,0,0])
        XCTAssertEqual(P739().dailyTemperatures2([30,40,50,60]), [1,1,1,0])
        XCTAssertEqual(P739().dailyTemperatures2([30,60,90]), [1,1,0])
    }
}
