/*
 Done: 04.05.2024. Revisited: N/A

 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

 You must write an algorithm that runs in O(n) time.

 Example 1:
 Input: nums = [100,4,200,1,3,2]
 Output: 4
 Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
 
 Example 2:
 Input: nums = [0,3,7,2,5,8,4,6,0,1]
 Output: 9

 Constraints:
 0 <= nums.length <= 10^5
 -10^9 <= nums[i] <= 10^9
 */

import Foundation

// Option 1. Inefficient algorithm (sorting). O(nlogn)

func longestConsecutive(_ nums: [Int]) -> Int {
    let sorted = nums.sorted()
    var sequence = 0
    for i in 1..<sorted.count {
        sequence += abs(sorted[i] - sorted[i - 1]) == 0 ? 0 : 1
        if ![0, 1].contains(abs(sorted[i] - sorted[i - 1])) {
            return sequence
        }
        if i == sorted.count - 1 {
            sequence += 1
            return sequence
        }
    }
    return 0
}

// Option 2. O(n)

func longestConsecutive2(_ nums: [Int]) -> Int {
    let numSet = Set(nums)
    var longestSequence = 0
    for i in 0..<nums.count {
        // find out if the num is a start of a sequence
        if !numSet.contains(nums[i] - 1) {
            // if num - 1 is not there in the numSet, it means num - 1 is the lowest for that particular sequence
            var sequenceLength = 0
            // if it's, then iterate and calculate the length of the sequence
            while numSet.contains(nums[i] + sequenceLength) {
                sequenceLength += 1
            }
            // determine the longest sequence
            longestSequence = max(sequenceLength, longestSequence)
        }
    }
    return longestSequence
}
