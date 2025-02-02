/*
 Done 02.02.2025. Revisited: N/A

 Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

 A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.


 Example 1:
 Input: root = [3,4,5,1,2], subRoot = [4,1,2]
 Output: true

 Example 2:
 Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2]
 Output: false

 Constraints:
 The number of nodes in the root tree is in the range [1, 2000].
 The number of nodes in the subRoot tree is in the range [1, 1000].
 -10^4 <= root.val <= 10^4
 -10^4 <= subRoot.val <= 10^4

 https://www.youtube.com/watch?v=E36O5SWp-LE
 Amazon
 */

import Foundation

class P572 {

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        return false
    }

    // MARK: - Option 2. Time: O(?). Memory: O(?)

    func isSubtree2(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if subRoot == nil {
            return true
        }
        if root == nil {
            return false
        }
        
        return isSameTree(root, subRoot) || isSubtree2(root?.left, subRoot) || isSubtree2(root?.right, subRoot)
    }

    private func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if (p == nil || q == nil) || (p?.val != q?.val) {
            return false
        }
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
