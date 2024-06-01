/*
 Done: 01.06.2024. Revisited: N/A

 You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation: http://en.wikipedia.org/wiki/Reverse_Polish_notation.

 Evaluate the expression. Return an integer that represents the value of the expression.

 Note that:
 The valid operators are '+', '-', '*', and '/'.
 Each operand may be an integer or another expression.
 The division between two integers always truncates toward zero.
 There will not be any division by zero.
 The input represents a valid arithmetic expression in a reverse polish notation.
 The answer and all the intermediate calculations can be represented in a 32-bit integer.

 Example 1:
 Input: tokens = ["2","1","+","3","*"]
 Output: 9
 Explanation: ((2 + 1) * 3) = 9

 Example 2:
 Input: tokens = ["4","13","5","/","+"]
 Output: 6
 Explanation: (4 + (13 / 5)) = 6

 Example 3:
 Input: tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
 Output: 22
 Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
 = ((10 * (6 / (12 * -11))) + 17) + 5
 = ((10 * (6 / -132)) + 17) + 5
 = ((10 * 0) + 17) + 5
 = (0 + 17) + 5
 = 17 + 5
 = 22

 Constraints:
 1 <= tokens.length <= 10^4
 tokens[i] is either an operator: "+", "-", "*", or "/", or an integer in the range [-200, 200].
 */

import Foundation

class P150 {

    class StrStack {

        private var stack: [String]

        init() {
            stack = []
        }

        func push(_ val: String) {
            stack.append(val)
        }

        func pop() -> String? {
            stack.removeLast()
        }

        func top() -> String? {
            return stack.last
        }
    }

    // MARK: - Option 1. Time: O(n). Memory: O(n)

    func evalRPN(_ tokens: [String]) -> Int {
        let stack = StrStack()

        for char in tokens {
            switch char {
            case "+":
                let value1 = (Int(stack.pop() ?? "0") ?? 0)
                let value2 = (Int(stack.pop() ?? "0") ?? 0)
                stack.push(String(value2 + value1))
            case "-":
                let value1 = (Int(stack.pop() ?? "0") ?? 0)
                let value2 = (Int(stack.pop() ?? "0") ?? 0)
                stack.push(String(value2 - value1))
            case "*":
                let value1 = (Int(stack.pop() ?? "0") ?? 0)
                let value2 = (Int(stack.pop() ?? "0") ?? 0)
                stack.push(String(value2 * value1))
            case "/":
                let value1 = (Int(stack.pop() ?? "0") ?? 0)
                let value2 = (Int(stack.pop() ?? "0") ?? 0)
                stack.push(String(value2 / value1))
            default:
                // number
                stack.push(char)
            }
        }

        return Int(stack.top() ?? "0") ?? 0
    }

}
