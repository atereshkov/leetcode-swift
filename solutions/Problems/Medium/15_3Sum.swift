/*
 Done: 18.05.2024. Revisited: N/A

 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

 Notice that the solution set must not contain duplicate triplets.

 Example 1:
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Explanation:
 nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
 nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
 nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
 The distinct triplets are [-1,0,1] and [-1,-1,2].
 Notice that the order of the output and the order of the triplets does not matter.

 Example 2:
 Input: nums = [0,1,1]
 Output: []
 Explanation: The only possible triplet does not sum up to 0.

 Example 3:
 Input: nums = [0,0,0]
 Output: [[0,0,0]]
 Explanation: The only possible triplet sums up to 0.

 Constraints:
 3 <= nums.length <= 3000
 -10^5 <= nums[i] <= 10^5
 */

import Foundation

// MARK: - Option 1. Time: O(n^3). Memory: O(n).

class P15 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var triplets: [[Int]] = []

        for i in 0..<nums.count {
            let num = nums[i]
            var leftP = i > 0 ? 0 : i + 1
            var rightP = i < nums.count - 1 ? nums.count - 1 : nums.count - 2
            while leftP != nums.count {
                while rightP >= 0 {
                    if i != leftP && i != rightP && leftP != rightP {
                        if num + nums[leftP] + nums[rightP] == 0 {
                            triplets.append([num, nums[leftP], nums[rightP]])
                        }
                    }
                    rightP -= rightP == leftP ? 2 : 1
                }
                leftP += i == leftP + 1 ? 2 : 1
                rightP = i < nums.count - 1 ? nums.count - 1 : nums.count - 2
            }
        }

        return triplets
    }

    // MARK: - Option 2. NC (based on two sum). Time: O(n^2). Memory: O(n)

    func threeSum2(_ nums: [Int]) -> [[Int]] {
        let sorted = nums.sorted()
        var triplets: [[Int]] = []

        for i in 0..<sorted.count {
            let num = sorted[i]
            if i > 0 && num == sorted[i - 1] {
                // Same value as before, skip it
                continue
            }

            var lPointer = i + 1
            var rPointer = sorted.count - 1

            while lPointer < rPointer {
                let sum = num + sorted[lPointer] + sorted[rPointer]
                if sum > 0 {
                    rPointer -= 1
                } else if sum < 0 {
                    lPointer += 1
                } else if sum == 0 {
                    triplets.append([num, sorted[lPointer], sorted[rPointer]])
                    lPointer += 1
                    while lPointer < rPointer && sorted[lPointer] == sorted[lPointer - 1] {
                        lPointer += 1
                    }
                    // [-2, -2, 0, 0, 2, 2]
                }
            }
        }

        return triplets
    }
}
