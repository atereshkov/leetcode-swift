/*
 Done 02.02.2025. Revisited: N/A

 Given the roots of two binary trees p and q, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

 Example 1:
 Input: p = [1,2,3], q = [1,2,3]
 Output: true

 Example 2:
 Input: p = [1,2], q = [1,null,2]
 Output: false

 Example 3:
 Input: p = [1,2,1], q = [1,1,2]
 Output: false

 Constraints:
 The number of nodes in both trees is in the range [0, 100].
 -10^4 <= Node.val <= 10^4

 https://www.youtube.com/watch?v=vRbbcKXCxOw
 Amazon
 */

import Foundation

class P100 {

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return false
    }

    // MARK: - Option 2 (neetcode - Deep First Search). Time: O(n) O(p+q?). Memory: O(n)

    func isSameTree2(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if (p == nil || q == nil) || (p?.val != q?.val) {
            return false
        }
        return isSameTree2(p?.left, q?.left) && isSameTree2(p?.right, q?.right)
    }

}
