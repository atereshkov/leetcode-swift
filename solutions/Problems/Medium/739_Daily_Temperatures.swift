/*
 Done: 02.06.2024. Revisited: N/A

 Given an array of integers temperatures represents the daily temperatures, return an array `answer` such that `answer[i]` is the number of days you have to wait after the `i^th` day to get a warmer temperature. If there is no future day for which this is possible, keep `answer[i] == 0` instead.

 Example 1:
 Input: temperatures = [73,74,75,71,69,72,76,73]
 Output: [1,1,4,2,1,1,0,0]

 Example 2:
 Input: temperatures = [30,40,50,60]
 Output: [1,1,1,0]

 Example 3:
 Input: temperatures = [30,60,90]
 Output: [1,1,0]

 Constraints:
 1 <= temperatures.length <= 10^5
 30 <= temperatures[i] <= 100
 */

import Foundation

class P739 {

    // MARK: - Option 1. NC. Time: O(n). Memory: O(n)

    class IntPairStack {
        private var stack: [(temp: Int, index: Int)]

        init() {
            stack = []
        }

        func push(_ val: (temp: Int, index: Int)) {
            stack.append(val)
        }

        func pop() -> (temp: Int, index: Int)? {
            stack.removeLast()
        }

        func top() -> (temp: Int, index: Int)? {
            return stack.last
        }
    }

    // [73,74,75,71,69,72,76,73]
    // [1, 1, 4, 2, 1, 1, 0, 0]
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        let stack = IntPairStack()

        for (i, t) in temperatures.enumerated() {
            while stack.top() != nil && t > stack.top()!.temp {
                let stackIndex = stack.pop()!.index
                result[stackIndex] = i - stackIndex
            }
            stack.push((t, i))
        }

        return result
    }

    // MARK: - Option 1. Optimized (no key/value). Time: O(n). Memory: O(n)

    class IntStack {
        private var stack: [Int]

        init() {
            stack = []
        }

        func push(_ val: Int) {
            stack.append(val)
        }

        func pop() -> Int? {
            stack.removeLast()
        }

        func top() -> Int? {
            return stack.last
        }
    }

    // [73,74,75,71,69,72,76,73]
    // [1, 1, 4, 2, 1, 1, 0, 0]
    func dailyTemperatures2(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        let stack = IntStack()

        for i in 0..<temperatures.count {
            while stack.top() != nil && temperatures[stack.top()!] < temperatures[i] {
                let stackIndex = stack.pop()!
                result[stackIndex] = i - stackIndex
            }
            stack.push(i)
        }

        return result
    }

}
