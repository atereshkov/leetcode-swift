/*
 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 Example 1:
 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]

 Constraints:

 1 <= nums.length <= 10^5
 -10^4 <= nums[i] <= 10^4
 k is in the range [1, the number of unique elements in the array].
 It is guaranteed that the answer is unique.

 Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
 */

import Foundation

// Option 1. Time O(n), Memory O(n) ?

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    // element (key) and count (value)
    var result = [Int: Int]()

    for num in nums {
        result[num] = (result[num] ?? 0) + 1
    }

    return result.sorted(by: { $0.value > $1.value }).prefix(k).map { $0.key }
}

// Option 2. Bucket Sort. Time O(n), Memory O(n)

func topKFrequent2(_ nums: [Int], _ k: Int) -> [Int] {
    // value and count
    var count = [Int: Int]()

    // count and values
    var freq = [Int: [Int]]()

    for i in 0..<nums.count {
        freq[i] = []
    }
    for num in nums {
        count[num] = (count[num] ?? 0) + 1
    }
    for c in count {
        if freq[c.value] != nil {
            freq[c.value]?.append(c.key)
        } else {
            freq[c.value] = [c.key]
        }
    }

    var result: [Int] = []
    for i in (0...freq.count).reversed() {
        let values = freq[i]
        for value in values ?? [] {
            result.append(value)
            if result.count == k {
                return result
            }
        }
    }
    return []
}
