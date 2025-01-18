import XCTest

@testable import leetcode

class Diameter_of_Binary_TreeTests: XCTestCase {

    // Option 1

    func test543_Diameter_of_Binary_TreeTests1() {
        let root = TreeNode(
            1,
            TreeNode(3),
            TreeNode(2, TreeNode(4), TreeNode(5))
        )
        XCTAssertEqual(P543().diameterOfBinaryTree1(root), 3)

        let root2 = TreeNode(
            1,
            TreeNode(2),
            nil
        )
        XCTAssertEqual(P543().diameterOfBinaryTree1(root2), 1)
    }

    // Option 2 (neetcode - bruteforce)

    func test543_Diameter_of_Binary_TreeTests2() {
        let root = TreeNode(
            1,
            TreeNode(3),
            TreeNode(2, TreeNode(4), TreeNode(5))
        )
        XCTAssertEqual(P543().diameterOfBinaryTree2(root), 3)

        let root2 = TreeNode(
            1,
            TreeNode(2),
            nil
        )
        XCTAssertEqual(P543().diameterOfBinaryTree2(root2), 1)
    }

    // Option 3 (neetcode - Depth First Search)

    func test543_Diameter_of_Binary_TreeTests3() {
        let root = TreeNode(
            1,
            TreeNode(3),
            TreeNode(2, TreeNode(4), TreeNode(5))
        )
        XCTAssertEqual(P543().diameterOfBinaryTree3(root), 3)

        let root2 = TreeNode(
            1,
            TreeNode(2),
            nil
        )
        XCTAssertEqual(P543().diameterOfBinaryTree3(root2), 1)
    }

    // Option 4 (neetcode - Iterative DFS)

    func test543_Diameter_of_Binary_TreeTests4() {
        let root = TreeNode(
            1,
            TreeNode(3),
            TreeNode(2, TreeNode(4), TreeNode(5))
        )
        XCTAssertEqual(P543().diameterOfBinaryTree4(root), 3)

        let root2 = TreeNode(
            1,
            TreeNode(2),
            nil
        )
        XCTAssertEqual(P543().diameterOfBinaryTree4(root2), 1)
    }
}
