import XCTest

@testable import leetcode

class Best_Time_to_Buy_and_Sell_StockTests: XCTestCase {

    // Option 1 (my - bruteforce)

    func test121_Best_Time_to_Buy_and_Sell_StockTests1() {
        XCTAssertEqual(P121().maxProfit([7,1,5,3,6,4]), 5)
        XCTAssertEqual(P121().maxProfit([7,3,5,2,8,3,6,7,4]), 6)
        XCTAssertEqual(P121().maxProfit([7,6,4,3,1]), 0)
    }

    // Option 2 (attempt 2)

    func test121_Best_Time_to_Buy_and_Sell_StockTests2() {
        XCTAssertEqual(P121().maxProfit2([7,1,5,3,6,4]), 5)
        XCTAssertEqual(P121().maxProfit2([7,3,5,2,8,3,6,7,4]), 6)
        XCTAssertEqual(P121().maxProfit2([7,6,4,3,1]), 0)
    }

    // Option 3 (neetcode)

    func test121_Best_Time_to_Buy_and_Sell_StockTests3() {
        XCTAssertEqual(P121().maxProfit3([7,1,5,3,6,4]), 5)
        XCTAssertEqual(P121().maxProfit3([7,3,5,2,8,3,6,7,4]), 6)
        XCTAssertEqual(P121().maxProfit3([7,6,4,3,1]), 0)
    }
}
