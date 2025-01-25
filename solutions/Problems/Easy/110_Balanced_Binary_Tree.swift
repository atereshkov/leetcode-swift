/*
 Done 25.01.2025. Revisited: N/A (medium)

 Given a binary tree, determine if it is height-balanced.

 A height-balanced binary tree is a binary tree in which the depth of the two subtrees of every node never differs by more than one.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: true

 Example 2:
 Input: root = [1,2,2,3,3,null,null,4,4]
 Output: false

 Example 3:
 Input: root = []
 Output: true

 Constraints:
 The number of nodes in the tree is in the range [0, 5000].
 -10^4 <= Node.val <= 10^4

 https://www.youtube.com/watch?v=QfJsau0ItOY
 Amazon
 */

import Foundation

class P110 {

    // MARK: - Option 1 (my). Time: O(?). Memory: O(?)

    func isBalanced(_ root: TreeNode?) -> Bool {
        return false
    }

    // MARK: - Option 2 (neetcode - Deep). Time: O(n). Memory: O(n)

    func isBalanced2(_ root: TreeNode?) -> Bool {
        return dfs(root).0
    }

    func dfs(_ root: TreeNode?) -> (Bool, Int) {
        if root == nil {
            return (true, 0)
        }
        
        let (leftIsBalanced, leftHeight) = dfs(root?.left)
        let (rightIsBalanced, rightHeight) = dfs(root?.right)

        let isBalanced = leftIsBalanced && rightIsBalanced && abs(leftHeight - rightHeight) <= 1
        let height = max(leftHeight, rightHeight) + 1

        return (isBalanced, height)
    }
}
