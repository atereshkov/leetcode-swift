import XCTest

@testable import leetcode

class Balanced_Binary_TreeTestsTests: XCTestCase {

    // Option 1

    func test110_Balanced_Binary_TreeTests1() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(17))
        )
        XCTAssertEqual(P110().isBalanced(root), true)

        let root2 = TreeNode(
            1,
            TreeNode(2, TreeNode(3, TreeNode(4), TreeNode(4)), TreeNode(3)),
            TreeNode(2)
        )
        XCTAssertEqual(P110().isBalanced(root2), false)
    }

    // Option 2

    func test110_Balanced_Binary_TreeTests2() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(17))
        )
        XCTAssertEqual(P110().isBalanced2(root), true)

        let root2 = TreeNode(
            1,
            TreeNode(2, TreeNode(3, TreeNode(4), TreeNode(4)), TreeNode(3)),
            TreeNode(2)
        )
        XCTAssertEqual(P110().isBalanced2(root2), false)
    }
}
