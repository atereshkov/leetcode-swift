/*
 Done: 08.12.2024. Revisited: N/A

 Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [-1,0,3,5,9,12], target = 9
 Output: 4
 Explanation: 9 exists in nums and its index is 4

 Example 2:
 Input: nums = [-1,0,3,5,9,12], target = 2
 Output: -1
 Explanation: 2 does not exist in nums so return -1


 Constraints:

 1 <= nums.length <= 10^4
 -10^4 < nums[i], target < 10^4
 All the integers in nums are unique.
 nums is sorted in ascending order.
 */

import Foundation

class P704 {

    // MARK: - Option 1 (my, recursion attempt, uncompleted). Time: O(logn). Memory: O(1) (16 -> 8 -> 4 -> 2 -> 1)

    func search1(_ nums: [Int], _ target: Int) -> Int {
        let middleIndex = nums.count / 2
        if nums.count == 1 && nums.first != target { return -1 }
        if nums[middleIndex] == target {
            return middleIndex
        } else if nums[middleIndex] < target {
            return search1(Array(nums[middleIndex...]), target)
        } else {
            return search1(Array(nums[..<middleIndex]), target)
        }
    }

    // MARK: - Option 2 (neetcode, iterative). Time: O(logn) (16 -> 8 -> 4 -> 2 -> 1). Memory: O(1)

    func search2(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            let middleIndex = (l + r) / 2

            if nums[middleIndex] == target {
                return middleIndex
            } else if nums[middleIndex] < target {
                l = middleIndex + 1 // shift left pointer to middle + 1, cutting off the left half
            } else {
                r = middleIndex - 1 // shift right pointer to middle - 1, cutting off the right half
            }
        }

        return -1
    }
}







/*
 if nums[middle] == target {
     return middle
 } else if nums[middle] < target {
     return search(Array(nums[middle...]), target)
 } else {
     return search(Array(nums[..<middle]), target)
 }
 */
