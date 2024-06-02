/*
 Done: 02.06.2024. Revisited: N/A

 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:
 Input: n = 3
 Output: ["((()))", "(()())", "(())()", "()(())", "()()()"]

 Example 2:
 Input: n = 1
 Output: ["()"]

 Constraints:
 1 <= n <= 8
 */

import Foundation

class P22 {

    class CharStack {
        private var stack: [Character]

        init() {
            stack = []
        }

        func push(_ val: Character) {
            stack.append(val)
        }

        func pop() -> Character? {
            stack.removeLast()
        }

        func top() -> Character? {
            return stack.last
        }

        func joined() -> String {
            return stack.map { String($0) }.joined()
        }
    }

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func generateParenthesis(_ n: Int) -> [String] {
        var result: [String] = []
        var stack = CharStack()
        backtrack(n: n, openN: 0, closedN: 0, stack: &stack, res: &result)
        return result
    }

    private func backtrack(n: Int, openN: Int, closedN: Int, stack: inout CharStack, res: inout [String]) {
        // Valid result
        if n == openN, openN == closedN {
            res.append(stack.joined())
            return
        }
        // Only add open paranthesis if open < n
        if openN < n {
            stack.push("(")
            backtrack(n: n, openN: openN + 1, closedN: closedN, stack: &stack, res: &res)
            _ = stack.pop()
        }
        // Only add close paranthesis if closed < open
        if closedN < openN {
            stack.push(")")
            backtrack(n: n, openN: openN, closedN: closedN + 1, stack: &stack, res: &res)
            _ = stack.pop()
        }
    }
}
