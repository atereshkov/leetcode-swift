/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.

 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.

 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.

 Constraints:
 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
 */

import Foundation

// Option 1.

func isPalindrome(_ s: String) -> Bool {
    let str = s
        .components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
        .lowercased()

    if str.isEmpty {
        return true
    }

    if str == String(str.reversed()) {
        return true
    }

    return false
}

// Option 2. Time: O(n). Memory: O(1)

func isPalindrome2(_ s: String) -> Bool {
    var lPointer = 0
    var rPointer = s.count - 1
    
    while lPointer < rPointer {
        while lPointer < rPointer && !(s[lPointer].isLetter || s[lPointer].isNumber) {
            lPointer += 1
        }
        while rPointer > lPointer && !(s[rPointer].isLetter || s[rPointer].isNumber) {
            rPointer -= 1
        }
        if s[lPointer].lowercased() != s[rPointer].lowercased() {
            return false
        } else {
            lPointer += 1
            rPointer -= 1
        }
    }

    return true
}
