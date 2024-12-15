/*
 Done 15.12.2024. Revisited: N/A

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Example 1:
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

 Example 2:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.

 Constraints:

 1 <= prices.length <= 10^5
 0 <= prices[i] <= 10^4
 */

import Foundation

class P121 {

    // MARK: - Option 1 (my - bruteforce). Time: O(n^2). Memory: O(?)

    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0

        for i in 0..<prices.count {
            var rightIndex = i + 1
            while rightIndex < prices.count {
                if prices[rightIndex] - prices[i] > maxProfit {
                    maxProfit = prices[rightIndex] - prices[i]
                } else {
                    rightIndex += 1
                }
            }
        }

        return maxProfit
    }

    // MARK: - Option 2 (attempt 2). Time: O(?). Memory: O(?)

    func maxProfit2(_ prices: [Int]) -> Int {
        return 0
    }

    // MARK: - Option 3 (neetcode). Time: O(1). Memory: O(n)

    func maxProfit3(_ prices: [Int]) -> Int {
        var leftP = 0 // buy
        var rightP = 1 // sell
        var maxProfit = 0

        while rightP < prices.count {
            if prices[leftP] < prices[rightP] { // profitable?
                let profit = prices[rightP] - prices[leftP]
                maxProfit = max(maxProfit, profit)
            } else {
                leftP = rightP // the lowest value
            }
            rightP += 1
        }

        return maxProfit
    }
}
