import XCTest

@testable import leetcode

class Same_TreeTests: XCTestCase {

    // Option 1

    func test100_Same_TreeTests1() {
        let p = TreeNode(
            1,
            TreeNode(2),
            TreeNode(3)
        )
        let q = TreeNode(
            1,
            TreeNode(2),
            TreeNode(3)
        )
        XCTAssertEqual(P100().isSameTree(p, q), true)

        let p2 = TreeNode(
            1,
            nil,
            TreeNode(2)
        )
        let q2 = TreeNode(
            1,
            TreeNode(2),
            nil
        )
        XCTAssertEqual(P100().isSameTree(p2, q2), false)

        let p3 = TreeNode(
            1,
            TreeNode(2),
            TreeNode(1)
        )
        let q3 = TreeNode(
            1,
            TreeNode(1),
            TreeNode(2)
        )
        XCTAssertEqual(P100().isSameTree(p3, q3), false)
    }

    // Option 2

    func test100_Same_TreeTests2() {
        let p = TreeNode(
            1,
            TreeNode(2),
            TreeNode(3)
        )
        let q = TreeNode(
            1,
            TreeNode(2),
            TreeNode(3)
        )
        XCTAssertEqual(P100().isSameTree2(p, q), true)

        let p2 = TreeNode(
            1,
            nil,
            TreeNode(2)
        )
        let q2 = TreeNode(
            1,
            TreeNode(2),
            nil
        )
        XCTAssertEqual(P100().isSameTree2(p2, q2), false)

        let p3 = TreeNode(
            1,
            TreeNode(2),
            TreeNode(1)
        )
        let q3 = TreeNode(
            1,
            TreeNode(1),
            TreeNode(2)
        )
        XCTAssertEqual(P100().isSameTree2(p3, q3), false)
    }
}
