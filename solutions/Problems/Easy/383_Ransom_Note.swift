/*
 Done 07.09.2025. Revisited: N/A

 Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

 Each letter in magazine can only be used once in ransomNote.

 Example 1:
 Input: ransomNote = "a", magazine = "b"
 Output: false

 Example 2:
 Input: ransomNote = "aa", magazine = "ab"
 Output: false

 Example 3:
 Input: ransomNote = "aa", magazine = "aab"
 Output: true

 Constraints:
 1 <= ransomNote.length, magazine.length <= 10^5
 ransomNote and magazine consist of lowercase English letters.

 https://www.youtube.com/watch?v=pRpRsrlvmEs
 Google
 */

import Foundation

class P383 {

    // MARK: - Option 1 (my). Time: O(?). Memory: O(?)

    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var letters: [Character: Int] = [:]

        for ch in magazine {
            letters[ch] = (letters[ch] ?? 0) + 1
        }

        for ch in ransomNote {
            if let letter = letters[ch], letter > 0 {
                letters[ch] = letters[ch]! - 1
            } else {
                return false
            }
        }

        return true
    }

    // MARK: - Option 2 (neetcode). Time: O(?). Memory: O(?)

    func canConstruct2(_ ransomNote: String, _ magazine: String) -> Bool {
        return false
    }

}
