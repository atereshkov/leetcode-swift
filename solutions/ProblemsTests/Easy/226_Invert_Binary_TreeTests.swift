import XCTest

@testable import leetcode

class Invert_Binary_TreeTests: XCTestCase {

    // Option 1

    func test226_Invert_Binary_TreeTests1() {
        let root = TreeNode(
            4,
            TreeNode(2, TreeNode(1), TreeNode(3)),
            TreeNode(7, TreeNode(6), TreeNode(9))
        )
        let expected = TreeNode(
            4,
            TreeNode(7, TreeNode(9), TreeNode(6)),
            TreeNode(2, TreeNode(3), TreeNode(1))
        )
        XCTAssertEqual(P226().invertTree(root), expected)
    }

    // Option 2 (neetcode)

    func test226_Invert_Binary_TreeTests2() {
        let root = TreeNode(
            4,
            TreeNode(2, TreeNode(1), TreeNode(3)),
            TreeNode(7, TreeNode(6), TreeNode(9))
        )
        let expected = TreeNode(
            4,
            TreeNode(7, TreeNode(9), TreeNode(6)),
            TreeNode(2, TreeNode(3), TreeNode(1))
        )
        XCTAssertEqual(P226().invertTree2(root), expected)
    }
}
