/*
 Done 13.09.2025. Revisited: N/A

 Write an algorithm to determine if a number n is happy.

 A happy number is a number defined by the following process:
 - Starting with any positive integer, replace the number by the sum of the squares of its digits.
 - Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
 - Those numbers for which this process ends in 1 are happy.

 Return true if n is a happy number, and false if not.

 Example 1:
 Input: n = 19
 Output: true
 Explanation:
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1

 Example 2:
 Input: n = 2
 Output: false

 Constraints:
 1 <= n <= 2^31 - 1

 https://www.youtube.com/watch?v=ljz85bxOYJ0
 */

import Foundation

class P202 {

    // MARK: - Option 1 (my). Time: O(?). Memory: O(?)

    func calculateSum(_ n: Int) -> Int {
        var sum: Decimal = 0
        let numbers = String(n)
        for numStr in numbers {
            guard let num = Int(String(numStr)) else { continue }
            let value = pow(Decimal(num), 2)
            sum += value
        }

        return NSDecimalNumber(decimal: sum).intValue
    }

    func isHappy(_ n: Int) -> Bool {
        var map: [Int: Int] = [:]
        var nextNum = n

        while true {
            let sum = calculateSum(nextNum)
            if sum == 1 {
                return true
            }
            if map[nextNum] != nil {
                // Got same number twice = we're in the endless loop
                return false
            } else {
                map[nextNum] = sum
                nextNum = sum
            }
        }
    }

    // MARK: - Option 2. Time: O(?). Memory: O(n) (Better Solution - Linked List Cycle)

    func isHappy2(_ n: Int) -> Bool {
        var visit = Set<Int>()
        var nextN = n

        while !visit.contains(nextN) {
            visit.insert(nextN)
            nextN = calculateSum2(nextN)
            if nextN == 1 {
                return true
            }
        }

        return false
    }

    func calculateSum2(_ n: Int) -> Int {
        var output = 0
        var num = n

        while num > 0 {
            var digit = num % 10
            digit = NSDecimalNumber(decimal: pow(Decimal(num), 2)).intValue
            output += digit
            num = num / 10
        }

        return output
    }

}
