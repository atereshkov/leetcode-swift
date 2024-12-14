/*
 Done: 14.12.2024. Revisited: N/A

 You are given an m x n integer matrix matrix with the following two properties:
 - Each row is sorted in non-decreasing order.
 - The first integer of each row is greater than the last integer of the previous row.

 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.

 Example 1:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
 Output: true

 Example 2:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
 Output: false

 Constraints:
 m == matrix.length
 n == matrix[i].length
 1 <= m, n <= 100
 -10^4 <= matrix[i][j], target <= 10^4
 */

import Foundation

class P74 {

    // MARK: - Option 1 (my, not optimal). Time: O(?). Memory: O(?)

    func searchMatrix1(_ matrix: [[Int]], _ target: Int) -> Bool {
        for row in matrix {
            if search(in: row, target: target) {
                return true
            }
        }
        return false
    }

    // Option 1, recursion
    private func search(in array: [Int], target: Int) -> Bool {
        let middleIndex = array.count / 2
        if array.count == 1 && array.first != target { return false }
        if array[middleIndex] == target {
            return true
        } else if array[middleIndex] < target {
            return search(in: Array(array[middleIndex...]), target: target)
        } else {
            return search(in: Array(array[..<middleIndex]), target: target)
        }
    }

    // MARK: - Option 2 (my). Time: O(?). Memory: O(?)

    func searchMatrix2(_ matrix: [[Int]], _ target: Int) -> Bool {
        var l = 0
        var r = matrix.count - 1

        while l <= r {
            let middleIndex = (l + r) / 2

            if target >= matrix[middleIndex].first! && target <= matrix[middleIndex].last! {
                return search(matrix[middleIndex], target)
            } else if matrix[middleIndex].first! < target {
                l = middleIndex + 1 // shift left pointer to middle + 1, cutting off the left half
            } else {
                r = middleIndex - 1 // shift right pointer to middle - 1, cutting off the right half
            }
        }

        return false
    }

    // Option 2, iterative
    private func search(_ nums: [Int], _ target: Int) -> Bool {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            let middleIndex = (l + r) / 2

            if nums[middleIndex] == target {
                return true
            } else if nums[middleIndex] < target {
                l = middleIndex + 1 // shift left pointer to middle + 1, cutting off the left half
            } else {
                r = middleIndex - 1 // shift right pointer to middle - 1, cutting off the right half
            }
        }

        return false
    }

    // MARK: - Option 3 (neetcode). Time: O(log(m * n)). Memory: O(1)

    func searchMatrix3(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let columns = matrix.first?.count ?? 0

        var top = 0
        var bottom = rows - 1

        // find the row first
        while top <= bottom {
            let row = (top + bottom) / 2
            // if target greater than the largest value in this row
            if target > matrix[row][columns - 1] {
                top = row + 1
            } else if target < matrix[row][0] {
                bottom = row - 1
            } else {
                break
            }
        }

        if (top <= bottom) == false {
            return false
        }

        // run binary search on a row that we found
        let row = (top + bottom) / 2
        var l = 0
        var r = columns - 1

        while l <= r {
            let m = (l + r) / 2
            if target > matrix[row][m] {
                l = m + 1
            } else if target < matrix[row][m] {
                r = m - 1
            } else {
                return true
            }
        }

        return false
    }

}
