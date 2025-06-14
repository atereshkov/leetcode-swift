/*
 Done 13.06.2025. Revisited: N/A

 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 Example 1:
 Input: nums = [3,2,3]
 Output: 3

 Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2

 Constraints:

 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109
 */

import Foundation

class P169 {

    // MARK: - Option 1 - my. Time: O(n). Memory: O(n)

    func majorityElement(_ nums: [Int]) -> Int {
        var elements: [Int: Int] = [:]
        for num in nums {
            elements[num] = (elements[num] ?? 0) + 1
        }
        return elements.sorted(by: { $0.value > $1.value }).first!.key
    }

    // MARK: - Option 2 - neetcode. Time: O(n). Memory: O(n)

    func majorityElement2(_ nums: [Int]) -> Int {
        var count: [Int: Int] = [:]
        var res = 0
        var maxCount = 0
        for num in nums {
            count[num, default: 0] += 1
            if count[num]! > maxCount {
                res = num
            }
            maxCount = max(count[num]!, maxCount)
        }
        return res
    }

    // MARK: - Option 3 - neetcode (Boyer-Moore). Time: O(n). Memory: O(1)

    func majorityElement3(_ nums: [Int]) -> Int {
        var count = 0
        var candidate: Int?

        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }

        return candidate!
    }
}
