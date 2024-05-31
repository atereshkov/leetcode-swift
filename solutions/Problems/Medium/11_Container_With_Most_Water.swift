/*
 Done: 31.05.2024. Revisited: N/A

 You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the i^th line are `(i, 0)` and `(i, height[i])`.

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.

 Example 1: (11_example_1.jpeg)
 Input: height = [1,8,6,2,5,4,8,3,7]
 Output: 49
 Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

 Example 2:
 Input: height = [1,1]
 Output: 1
 */

import Foundation

class P11 {

    // MARK: - Option 1. Brute force. Time: O(n^2). Memory: O(?)

    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0

        for l in 0..<height.count {
            for r in 1..<height.count {
                let area = (r - l) * min(height[l], height[r])
                maxArea = max(maxArea, area)
            }
        }

        return maxArea
    }

    // MARK: - Option 2. Time: O(n). Memory: O(n)

    func maxArea2(_ height: [Int]) -> Int {
        var maxArea = 0
        var lPointer = 0
        var rPointer = height.count - 1

        while lPointer < rPointer {
            let area = (rPointer - lPointer) * min(height[lPointer], height[rPointer])
            maxArea = max(area, maxArea)

            if height[lPointer] < height[rPointer] {
                lPointer += 1
            } else {
                rPointer -= 1
            }
        }

        return maxArea
    }
}
