/*
 Done 07.09.2025. Revisited: N/A (not easy tbh)

 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

 Example 1:
 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.

 Example 2:
 Input: nums1 = [1], m = 1, nums2 = [], n = 0
 Output: [1]
 Explanation: The arrays we are merging are [1] and [].
 The result of the merge is [1].

 Example 3:
 Input: nums1 = [0], m = 0, nums2 = [1], n = 1
 Output: [1]
 Explanation: The arrays we are merging are [] and [1].
 The result of the merge is [1].
 Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.

 Constraints:

 nums1.length == m + n
 nums2.length == n
 0 <= m, n <= 200
 1 <= m + n <= 200
 -109 <= nums1[i], nums2[j] <= 109

 https://www.youtube.com/watch?v=P1Ic85RarKY
 Google, Facebook
 */

import Foundation

class P88 {

    // MARK: - Option 1 (my). Time: O(?). Memory: O(?)

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if nums2.isEmpty { return }

        var lP = 0
        var rP = 0

        while lP < m + n && rP < n {
            print("nums1: \(nums1[lP]), nums2: \(nums2[rP])")
            if nums1[lP] == 0 {
                nums1[lP] = nums2[rP]
                rP += 1
                lP += 1
            } else if nums1[lP] > nums2[rP] {
                nums1.swapAt(lP, lP + 1)
                nums1[lP] = nums2[rP]
                rP += 1
                lP += 1
            } else {
                lP += 1
            }
        }
    }

    // MARK: - Option 2 (neetcode). Time: O(?). Memory: O(?)

    func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        // TODO: check and review the solution in details; debug it

        var last = n + m - 1 // last index of nums1
        var mP = m
        var nP = n

        // merge in reverse order
        while mP > 0 && nP > 0 {
            if nums1[mP - 1] > nums2[nP - 1] {
                nums1[last] = nums1[mP - 1]
                mP -= 1
            } else {
                nums1[last] = nums2[nP - 1]
                nP -= 1
            }
            last -= 1
        }

        // fill nums1 with leftover nums2
        while nP > 0 {
            nums1[last] = nums2[nP - 1]
            nP -= 1
            last -= 1
        }
    }

}
