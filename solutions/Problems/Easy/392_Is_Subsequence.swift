/*
 Done XX.XX.XXXX. Revisited: N/A

 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

 Example 1:
 Input: s = "abc", t = "ahbgdc"
 Output: true

 Example 2:
 Input: s = "axc", t = "ahbgdc"
 Output: false

 Constraints:
 0 <= s.length <= 100
 0 <= t.length <= 10^4
 s and t consist only of lowercase English letters.

 Amazon
 https://www.youtube.com/watch?v=99RVfqklbCE
 */

import Foundation

class P392 {

    // MARK: - Option 1 (my). Time: O(s+t). Memory: O(?)

    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var lP = 0
        var rP = 0
        while lP < s.count {
            var found = false
            while rP < t.count {
                if (s[lP] == t[rP]) {
                    lP += 1
                    rP += 1
                    found = true
                    break
                }
                rP += 1
            }
            if !found { return false }
        }
        return true
    }

    // MARK: - Option 2 (neetcode). Time: O(s+t). Memory: O(?)

    func isSubsequence2(_ s: String, _ t: String) -> Bool {
        var lP = 0
        var rP = 0
        while lP < s.count {
            while rP < t.count {
                if (s[lP] == t[rP]) {
                    lP += 1
                }
                rP += 1
            }
            return lP == s.count
        }
        return true
    }
}
