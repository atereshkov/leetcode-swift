/*
 Done 15.06.2025. Revisited: N/A

 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

 Example 1:
 Input: strs = ["flower","flow","flight"]
 Output: "fl"

 Example 2:
 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.

 Constraints:

 1 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] consists of only lowercase English letters if it is non-empty.

 Amazon.
 https://www.youtube.com/watch?v=0sWShKIJoo4
 */

import Foundation

class P14 {

    // MARK: - Option 1. Time: O(n * m?). Memory: O(?)

    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = ""

        for (i, ch) in strs.first?.enumerated() ?? "".enumerated() {
            for str in strs {
                if str[safe: i] != ch {
                    return prefix
                }
            }
            prefix.append(ch)
        }

        return prefix
    }

    // MARK: - Option 2 - neetcode. Time: O(?). Memory: O(?)

    func longestCommonPrefix2(_ strs: [String]) -> String {
        // Actually the same as my approach, but also checks for the str lengths
        // before checking the characters.

        // So, no need to code it here.
        return ""
    }

}

fileprivate extension String {
    subscript(safe i: Int) -> Character? {
        guard i >= 0 && i < self.count else { return nil }
        return self[self.index(self.startIndex, offsetBy: i)]
    }
}
