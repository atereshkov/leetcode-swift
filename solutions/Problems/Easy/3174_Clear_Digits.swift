/*
 Done 02.06.2025. Revisited: N/A

 You are given a string s.
 Your task is to remove all digits by doing this operation repeatedly:
 Delete the first digit and the closest non-digit character to its left.
 Return the resulting string after removing all digits.

 Note that the operation cannot be performed on a digit that does not have any non-digit character to its left.

 Example 1:
 Input: s = "abc"
 Output: "abc"
 Explanation:
 There is no digit in the string.

 Example 2:
 Input: s = "cb34"
 Output: ""
 Explanation:
 First, we apply the operation on s[2], and s becomes "c4".
 Then we apply the operation on s[1], and s becomes "".

 Constraints:
 1 <= s.length <= 100
 s consists only of lowercase English letters and digits.
 The input is generated such that it is possible to delete all digits.
 */

import Foundation

class P3174 {

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func clearDigits(_ s: String) -> String {
        let stack = CharStack()
        for ch in s {
            if ch.isNumber {
                if (stack.top()?.isNumber == false) {
                    _ = stack.pop()
                } else {
                    stack.push(ch)
                }
            } else {
                stack.push(ch)
            }
        }

        return stack.joined()
    }

    // MARK: - Option 2. Time: O(?). Memory: O(?)


}
