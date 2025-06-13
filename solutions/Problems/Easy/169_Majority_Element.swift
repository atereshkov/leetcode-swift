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

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func majorityElement(_ nums: [Int]) -> Int {
        var elements: [Int: Int] = [:]
        for num in nums {
            elements[num] = (elements[num] ?? 0) + 1
        }
        return elements.sorted(by: { $0.value > $1.value }).first!.key
    }

    // MARK: - Option 2. Time: O(?). Memory: O(?)


}
