import XCTest

@testable import leetcode

class Maximum_Depth_of_Binary_TreeTests: XCTestCase {

    // Option 1

    func test104_Maximum_Depth_of_Binary_TreeTests1() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )
        XCTAssertEqual(P104().maxDepth(root), 3)

        let root2 = TreeNode(
            3,
            TreeNode(9),
            nil
        )
        XCTAssertEqual(P104().maxDepth(root2), 2)

        let root3 = TreeNode(
            3,
            nil,
            nil
        )
        XCTAssertEqual(P104().maxDepth(root3), 1)
    }

    // Option 2 (neetcode - Recursive DFS)

    func test104_Maximum_Depth_of_Binary_TreeTests2() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )
        XCTAssertEqual(P104().maxDepth2(root), 3)

        let root2 = TreeNode(
            3,
            TreeNode(9),
            nil
        )
        XCTAssertEqual(P104().maxDepth2(root2), 2)

        let root3 = TreeNode(
            3,
            nil,
            nil
        )
        XCTAssertEqual(P104().maxDepth2(root3), 1)
    }

    // Option 3 (neetcode - Iterative DFS (Stack))

    func test104_Maximum_Depth_of_Binary_TreeTests3() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )
        XCTAssertEqual(P104().maxDepth3(root), 3)

        let root2 = TreeNode(
            3,
            TreeNode(9),
            nil
        )
        XCTAssertEqual(P104().maxDepth3(root2), 2)

        let root3 = TreeNode(
            3,
            nil,
            nil
        )
        XCTAssertEqual(P104().maxDepth3(root3), 1)
    }

    // Option 4 (neetcode - Breadth First Search (Queue))

    func test104_Maximum_Depth_of_Binary_TreeTests4() {
        let root = TreeNode(
            3,
            TreeNode(9),
            TreeNode(20, TreeNode(15), TreeNode(7))
        )
        XCTAssertEqual(P104().maxDepth4(root), 3)

        let root2 = TreeNode(
            3,
            TreeNode(9),
            nil
        )
        XCTAssertEqual(P104().maxDepth4(root2), 2)

        let root3 = TreeNode(
            3,
            nil,
            nil
        )
        XCTAssertEqual(P104().maxDepth4(root3), 1)
    }
}
