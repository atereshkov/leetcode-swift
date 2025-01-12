/*
 Done 12.01.2025. Revisited: N/A

 Given the root of a binary tree, return its maximum depth.

 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: 3

 Example 2:
 Input: root = [1,null,2]
 Output: 2

 Constraints:
 The number of nodes in the tree is in the range [0, 10^4].
 -100 <= Node.val <= 100

 https://www.youtube.com/watch?v=hTM3phVI6YQ
 Amazon.
 */

import Foundation

class P104 {

    // MARK: - Option 1 (my attempt). Time: O(?). Memory: O(?)

    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        if root?.left == nil && root?.right == nil {
            return 1
        }

        let maxLeftDepth = maxDepth(root?.left)
        let maxRightDepth = maxDepth(root?.right)

        return max(maxLeftDepth, maxRightDepth) + 1
    }

    // MARK: - Option 2 (neetcode - Recursive DFS). Time: O(n). Memory: O(n)

    func maxDepth2(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return 1 + max(maxDepth2(root?.left), maxDepth2(root?.right))
    }

    // MARK: - Option 3 (neetcode - Iterative DFS (Stack)). Time: O(n). Memory: O(n)

    func maxDepth3(_ root: TreeNode?) -> Int {
        let stack = NodeIntPairStack()
        stack.push((node: root, level: 1))
        var res = 0

        while !stack.isEmpty {
            let (node, depth) = stack.pop()!
            if node != nil {
                res = max(res, depth)
                stack.push((node: node?.left, level: depth + 1))
                stack.push((node: node?.right, level: depth + 1))
            }
        }
        return res
    }

    class NodeIntPairStack {
        private var stack: [(node: TreeNode?, level: Int)]

        var isEmpty: Bool { stack.isEmpty }

        init() {
            stack = []
        }

        func push(_ val: (node: TreeNode?, level: Int)) {
            stack.append(val)
        }

        func pop() -> (node: TreeNode?, level: Int)? {
            stack.removeLast()
        }

        func top() -> (node: TreeNode?, level: Int)? {
            return stack.last
        }
    }

    // MARK: - Option 4 (neetcode - Breadth First Search (Queue)). Time: O(n). Memory: O(n)

    func maxDepth4(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        var queue = [root]
        var level = 0 // depth

        while !queue.isEmpty {
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                if let left = node?.left { queue.append(left) }
                if let right = node?.right { queue.append(right) }
            }
            level += 1
        }

        return level
    }

}
