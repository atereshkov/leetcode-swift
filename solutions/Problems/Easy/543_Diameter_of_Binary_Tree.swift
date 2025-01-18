/*
 Done 18.01.2025 (TODO DFS, bruteforce). Revisited: N/A. (medium)

 Given the root of a binary tree, return the length of the diameter of the tree.

 The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root (!).

 The length of a path between two nodes is represented by the number of edges between them.

 Example 1:
 Input: root = [1,2,3,4,5]
 Output: 3
 Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].

 Example 2:
 Input: root = [1,2]
 Output: 1

 Constraints:
 The number of nodes in the tree is in the range [1, 10^4].
 -100 <= Node.val <= 100

 https://www.youtube.com/watch?v=K81C31ytOZE
 */

import Foundation

class P543 {

    // MARK: - Option 1 (my). Time: O(?). Memory: O(?)

    func diameterOfBinaryTree1(_ root: TreeNode?) -> Int {
        return 0
    }

    // MARK: - Option 2 (neetcode - bruteforce). Time: O(?). Memory: O(?)

    func diameterOfBinaryTree2(_ root: TreeNode?) -> Int {
        return 0
    }

    // MARK: - Option 3 (neetcode - Depth First Search). Time: O(n). Memory: O(n) (depends on the tree?)?

    var res = 0

    func diameterOfBinaryTree3(_ root: TreeNode?) -> Int {
        _ = dfs3(root)
        return res
    }

    // Returns height
    func dfs3(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        let left = dfs3(root?.left)
        let right = dfs3(root?.right)
        res = max(res, left + right)
        return max(left, right) + 1
    }

    // MARK: - Option 4 (neetcode - Iterative DFS). Time: O(?). Memory: O(?)

    func diameterOfBinaryTree4(_ root: TreeNode?) -> Int {
        return 0
    }

}
