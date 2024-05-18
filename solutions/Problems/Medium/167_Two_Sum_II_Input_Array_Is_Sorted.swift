/*
 Done: 05.05.2024. Revisited: N/A

 Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.

 Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.

 The tests are generated such that there is exactly one solution. You may not use the same element twice.

 Your solution must use only constant extra space.

 Example 1:
 Input: numbers = [2,7,11,15], target = 9
 Output: [1,2]
 Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].

 Example 2:
 Input: numbers = [2,3,4], target = 6
 Output: [1,3]
 Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].

 Example 3:
 Input: numbers = [-1,0], target = -1
 Output: [1,2]
 Explanation: The sum of -1 and 0 is -1. Therefore index1 = 1, index2 = 2. We return [1, 2].

 Constraints:
 2 <= numbers.length <= 3 * 10^4
 -1000 <= numbers[i] <= 1000
 numbers is sorted in non-decreasing order.
 -1000 <= target <= 1000
 The tests are generated such that there is exactly one solution.
 */

import Foundation

// Option 1. Time: O(n), Memory: O(n)

class P167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var lPointer = 0
        var rPointer = numbers.count - 1

        while lPointer < rPointer {
            // decrease the right pointer to the left until the nums[lP] + nums[rP] is bigger than target
            while lPointer < rPointer && numbers[lPointer] + numbers[rPointer] > target {
                rPointer -= 1
            }
            if numbers[lPointer] + numbers[rPointer] == target {
                return [lPointer + 1, rPointer + 1]
            }
            // if sum is still not right, increase the sum by taking next left pointer
            if numbers[lPointer] < target {
                lPointer += 1
            }
        }

        return []
    }

    // Option 2. Solution from neetcode. Time: O(n), Memory: O(n)

    func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
        var lPointer = 0
        var rPointer = numbers.count - 1

        while lPointer < rPointer {
            let currentSum = numbers[lPointer] + numbers[rPointer]
            if currentSum > target {
                rPointer -= 1
            } else if currentSum < target {
                lPointer += 1
            } else if currentSum == target {
                return [lPointer + 1, rPointer + 1]
            }
        }

        return []
    }
}
