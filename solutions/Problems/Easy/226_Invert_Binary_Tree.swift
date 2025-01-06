/*
 Done 06.01.2025. Revisited: N/A
 Depth First Search (DFS).

 Given the root of a binary tree, invert the tree, and return its root.

 Example 1: (226_invert_tree_example_1.jpeg)
 Input: root = [4,2,7,1,3,6,9]
 Output: [4,7,2,9,6,3,1]

 Example 2: (226_invert_tree_example_2.jpeg)
 Input: root = [2,1,3]
 Output: [2,3,1]

 Example 3:
 Input: root = []
 Output: []

 Constraints:
 The number of nodes in the tree is in the range [0, 100].
 -100 <= Node.val <= 100

 https://www.youtube.com/watch?v=OnSn2XEQ4MY
 Google.
 */

import Foundation

class P226 {

    // MARK: - Option 1. Time: O(n). Memory: O(n)

    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        let tmp = root?.left
        root?.left = root?.right
        root?.right = tmp

        _ = invertTree(root?.left)
        _ = invertTree(root?.right)

        return root
    }

    // MARK: - Option 2 (neetcode). Time: O(n). Memory: O(n)

    func invertTree2(_ root: TreeNode?) -> TreeNode? {
        return TreeNode()
    }
}
