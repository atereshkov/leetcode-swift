/*
 Done: 31.05.2024. Revisited: N/A

 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:
 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 3. Every close bracket has a corresponding open bracket of the same type.

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false

 Constraints:
 1 <= s.length <= 10^4
 s consists of parentheses only '()[]{}'.
 */

import Foundation

class P20 {

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
    }

    // MARK: - Option 1. NC. Time: O(n). Memory: O(n)

    func isValid(_ s: String) -> Bool {
        let stack = CharStack()
        let closeToOpen: [Character: Character] = [")": "(", "}": "{", "]": "["]
        for char in s {
            if closeToOpen.values.contains(char) {
                stack.push(char)
            } else {
                if stack.top() == closeToOpen[char] {
                    _ = stack.pop()
                } else {
                    return false
                }
            }
        }
        return stack.top() == nil
    }
}
