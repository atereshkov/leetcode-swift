/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]

 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]

 Constraints:
 2 <= nums.length <= 10^5
 -30 <= nums[i] <= 30
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
 */

import Foundation

// Option 1, Time O(n * 2), Memory O(n * 2) or simply O(n) ignoring constant factor.

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result: [Int] = []

    // Index, suffix product
    var postfixData: [Int: Int] = [:]

    var postfixProduct: Int = 1
    for index in (0...nums.count - 1).reversed() {
        postfixData[index] = postfixProduct
        postfixProduct *= nums[index]
    }

    // Index, prefix product
    var prefixData: [Int: Int] = [:]

    var prefixProduct: Int = 1

    for index in 0..<nums.count {
        prefixData[index] = prefixProduct
        prefixProduct *= nums[index]
        let res = prefixData[index]! * postfixData[index]!
        result.append(res)
    }
    return result
}

// Option 2 (improved Option 1 without extra prefix/postfix arrays memory). Time O(n), Memory O(1)

func productExceptSelf2(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 1, count: nums.count)

    var prefixProduct = 1
    for i in 0..<nums.count {
        result[i] *= prefixProduct
        prefixProduct *= nums[i]
    }

    var postfixProduct = 1
    for i in (0..<nums.count).reversed() {
        result[i] *= postfixProduct
        postfixProduct *= nums[i]
    }

    return result

    /*
     prefix:
     ->
     |       a       |   a*b   | a*b*c | a*b*c*d |
     postfix:
     <-
     | a*b*c*d | b*c*d |   c*d   |      d        |
     the result is a multiply without the symbol in own position (the left value from prefix and the right one from postfix):
     |    b*c*d  | a*c*d | a*b*d |   a*b*c   |

     prefix:
     | 1 | a | a * b | a * b * c |
     postfix:
     |b * c * d |  c * d | d | 1 |
     */
}
