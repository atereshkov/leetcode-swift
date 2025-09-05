/*
 Done 04.09.2025. Revisited: N/A

 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Example 1:
 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.

 Example 2:
 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.

 Constraints:
 1 <= haystack.length, needle.length <= 104
 haystack and needle consist of only lowercase English characters.

 Google
 https://www.youtube.com/watch?v=Gjkhm1gYIMw
 */

import Foundation

class P28 {

    // MARK: - Option 1. Time: O(n * m). Memory: O(?)

    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.count > haystack.count { return -1 }

        var firstIndex = -1

        for i in 0..<haystack.count {
            if haystack[i] == needle.first {
                firstIndex = i
                for j in 0..<needle.count {
                    if (i + j >= haystack.count) {
                        firstIndex = -1
                        break
                    }
                    if haystack[i + j] != needle[j] {
                        firstIndex = -1
                        break
                    }
                }
                if firstIndex != -1 { return firstIndex }
            }
        }

        return firstIndex
    }

    // MARK: - Option 2 (neetcode). Time: O(n * m). Memory: O(?)

    func strStr2(_ haystack: String, _ needle: String) -> Int {
        if needle.count > haystack.count { return -1 }

        for i in 0..<haystack.count + 1 - needle.count {
            for j in 0..<needle.count {
                if haystack[i + j] != needle[j] {
                    break
                }
                if j == needle.count - 1 {
                    return i
                }
            }
        }

        return -1
    }

}
