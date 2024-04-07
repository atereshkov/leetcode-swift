/*
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

 Example 2:
 Input: strs = [""]
 Output: [[""]]

 Example 3:
 Input: strs = ["a"]
 Output: [["a"]]

 Constraints:

 1 <= strs.length <= 10^4
 0 <= strs[i].length <= 100
 strs[i] consists of lowercase English letters.

 https://leetcode.com/problems/group-anagrams/
 */

import Foundation

// Option 1. O(m * n)

func groupAnagrams(_ strs: [String]) -> [[String]] {
    // sorted letters of a word (key) and array of anagrams (value)
    var result = [String: [String]]()

    for str in strs {
        let key = String(str.sorted())
        if result[key] != nil {
            result[key]?.append(str)
        } else {
            result[key] = [str]
        }
    }
    
    return result.map { $0.value }
}
