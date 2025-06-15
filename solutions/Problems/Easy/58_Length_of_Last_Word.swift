/*
 Done 15.06.2025. Revisited: N/A

 Given a string s consisting of words and spaces, return the length of the last word in the string.

 A word is a maximal substring consisting of non-space characters only.

 Example 1:
 Input: s = "Hello World"
 Output: 5
 Explanation: The last word is "World" with length 5.

 Example 2:
 Input: s = "   fly me   to   the moon  "
 Output: 4
 Explanation: The last word is "moon" with length 4.

 Example 3:
 Input: s = "luffy is still joyboy"
 Output: 6
 Explanation: The last word is "joyboy" with length 6.

 Constraints:

 1 <= s.length <= 104
 s consists of only English letters and spaces ' '.
 There will be at least one word in s.
 */

import Foundation

class P58 {

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func lengthOfLastWord(_ s: String) -> Int {
        return s.split(separator: " ").last?.count ?? 0
    }

    // MARK: - Option 2. Time: O(?). Memory: O(?)

    func lengthOfLastWord2(_ s: String) -> Int {
        var length = 0

        for ch in s.trimmingCharacters(in: .whitespaces).reversed() {
            if ch == " " {
                return length
            } else {
                length += 1
            }
        }

        return length
    }

    // MARK: - Option 3 - neetcode. Time: O(n). Memory: O(1)

    func lengthOfLastWord3(_ s: String) -> Int {
        var length = 0
        var index = s.count - 1
        while s[index] == " " {
            index -= 1
        }
        while index >= 0 && s[index] != " " {
            length += 1
            index -= 1
        }
        return length
    }

}
