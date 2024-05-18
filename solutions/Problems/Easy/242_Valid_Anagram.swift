/*
 Done: 27.08.2023. Revisited: N/A

 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: s = "anagram", t = "nagaram"
 Output: true

 Example 2:
 Input: s = "rat", t = "car"
 Output: false

 Constraints:
 1 <= s.length, t.length <= 5 * 104
 s and t consist of lowercase English letters.

 Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?
 */

import Foundation

// Option 1 - O(s+t), Memory O(s+t)

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }

    var sSet = Dictionary<Character, Int>() // // "aacc" (a: 2, c: 2)
    for ch in s {
        sSet[ch] = 1 + (sSet[ch] ?? 0)
    }

    var tSet = Dictionary<Character, Int>() // // "ccac" (c: 3, a: 1)
    for ch in t {
        tSet[ch] = 1 + (tSet[ch] ?? 0)
    }

    for item in sSet {
        if item.value != tSet[item.key] {
            return false
        }
    }
    return true
}

// Option 2 - O(n^2) / O(nlogn)

func isAnagram2(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}
