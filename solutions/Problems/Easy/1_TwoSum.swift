/*
 Done: 26.08.2023

 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.

 Example 1:
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]

 Example 3:
 Input: nums = [3,3], target = 6
 Output: [0,1]

 Constraints:
 2 <= nums.length <= 10^4
 -10^9 <= nums[i] <= 10^9
 -10^9 <= target <= 10^9
 Only one valid answer exists.

 Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?
 */

import Foundation

// Option 1 - O(n^2)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count - 1 {
        for j in 0..<nums.count - 1 - i {
            let sum = nums[i] + nums[j + i + 1]
            if sum == target {
                return [i, j + i + 1]
            }
        }
    }
    return []
}

// Option 2 - O(n), + Memory O(n)

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var set = Dictionary<Int, Int>() // Value : Index
    for i in 0..<nums.count {
        let difference = target - nums[i]
        if set[difference] == nil {
            set[nums[i]] = i
        } else {
            return [set[difference]!, i]
        }
    }
    return []
}
