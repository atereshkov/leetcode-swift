/*
 Done: 21.04.2024. Revisited: N/A

 (premium)
 Design an algorithm to encode a list of strings to a single string. The encoded string is then decoded back to the original list of strings.

 Please implement encode and decode.

 Example 1:
 Input: ["lint","code","love","you"]
 Output:["lint","code","love","you"]
 Explanation: One possible encode method is: "leet:;code:;love:;you"

 Example 2:
 Input: ["we","say",":","yes"]
 Output: ["we","say",":","yes"]

 Constraints:
 0 <= strs.length < 100
 0 <= strs[i].length < 200
 strs[i] contains only UTF-8 characters.
 */

import Foundation

// Option 1 - incomplete solution with bugs. O(n)

func encodeStr(_ strs: [String]) -> String {
    var encodedStr = ""
    for str in strs {
        encodedStr.append("\(str.count)|\(str)")
    }
    return encodedStr
}

func decodeStr(_ string: String) -> [String] {
    var decoded: [String] = []
    var word = ""
    var count = ""
    var countInt: Int = 0
    for (index, ch) in string.enumerated() {
        if ch.isNumber {
            count.append(ch)
        } else if ch == "|" && string[index - 1] == count.last {
            countInt = Int(count) ?? 0
        } else {
            word.append(ch)
            countInt -= 1

            if countInt == 0 {
                decoded.append(word)
                word = ""
                count = ""
                countInt = 0
            }
        }
    }
    return decoded
}

extension String {
    public subscript(_ idx: Int) -> Character {
        self[self.index(self.startIndex, offsetBy: idx)]
    }
}

// Option 2 - solution from neetcode. O(n)

func encodeStr2(_ strs: [String]) -> String {
    if strs.isEmpty { return "#" }
    var counts = [String]()
    for str in strs {
        counts.append("\(str.count)")
    }
    return counts.joined(separator: ",") + "#" + strs.joined()
}

func decodeStr2(_ s: String) -> [String] {
    if s == "#" { return [] }
    let index = s.firstIndex(of: "#")!
    let counts = String(s[s.startIndex...s.index(before: index)]).components(separatedBy: ",")
    var sIndex = s.index(after: index)
    var decodedStrings = [String]()
    for count in counts {
        let endIndex = s.index(sIndex, offsetBy: Int(count)! - 1)
        if sIndex > endIndex {
            decodedStrings.append("")
            continue
        }
        decodedStrings.append(String(s[sIndex...endIndex]))
        sIndex = s.index(after: endIndex)
    }
    return decodedStrings
}

// Option 3 - my 2nd take. O(n)

func encodeStr3(_ strs: [String]) -> String {
    if strs.isEmpty { return "|" }
    var counts = [String]()
    for str in strs {
        counts.append("\(str.count)")
    }
    return counts.joined(separator: ",") + "|" + strs.joined()
}

func decodeStr3(_ s: String) -> [String] {
    if s == "|" { return [] }
    let index = s.firstIndex(of: "|")!
    let counts = String(s[s.startIndex...s.index(before: index)]).components(separatedBy: ",")
    var sIndex = s.index(after: index)
    var decodedStrings = [String]()
    for count in counts {
        let endIndex = s.index(sIndex, offsetBy: Int(count)! - 1)
        if sIndex > endIndex {
            decodedStrings.append("")
            continue
        }
        decodedStrings.append(String(s[sIndex...endIndex]))
        sIndex = s.index(after: endIndex)
    }
    return decodedStrings
}
