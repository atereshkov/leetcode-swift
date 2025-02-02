import XCTest

@testable import leetcode

class Subtree_of_Another_TreeTests: XCTestCase {

    // Option 1

    func test572_Subtree_of_Another_TreeTests1() {
        let rootTree = TreeNode(
            3,
            TreeNode(4, TreeNode(1), TreeNode(2)),
            TreeNode(5)
        )
        let subtree = TreeNode(
            4,
            TreeNode(1),
            TreeNode(2)
        )
        XCTAssertEqual(P572().isSubtree(rootTree, subtree), true)

        let rootTree2 = TreeNode(
            3,
            TreeNode(4, TreeNode(1), TreeNode(2, TreeNode(0), nil)),
            TreeNode(5)
        )
        let subtree2 = TreeNode(
            4,
            TreeNode(1),
            TreeNode(2)
        )
        XCTAssertEqual(P572().isSubtree(rootTree2, subtree2), false)
    }

    // Option 2 (neetcode)

    func test572_Subtree_of_Another_TreeTests2() {
        let rootTree = TreeNode(
            3,
            TreeNode(4, TreeNode(1), TreeNode(2)),
            TreeNode(5)
        )
        let subtree = TreeNode(
            4,
            TreeNode(1),
            TreeNode(2)
        )
        XCTAssertEqual(P572().isSubtree2(rootTree, subtree), true)

        let rootTree2 = TreeNode(
            3,
            TreeNode(4, TreeNode(1), TreeNode(2, TreeNode(0), nil)),
            TreeNode(5)
        )
        let subtree2 = TreeNode(
            4,
            TreeNode(1),
            TreeNode(2)
        )
        XCTAssertEqual(P572().isSubtree2(rootTree2, subtree2), false)
    }
}
