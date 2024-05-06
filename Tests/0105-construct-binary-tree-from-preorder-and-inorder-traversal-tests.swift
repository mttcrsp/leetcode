@testable
import Leetcode
import XCTest

final class ConstructBinaryTreeFromPreorderAndInorderTraversalTests: XCTestCase {
  func testBuildTree1() {
    let input = ([3, 9, 20, 15, 7], [9, 3, 15, 20, 7])
    let output = TreeNode([3, 9, 20, nil, nil, 15, 7])
    XCTAssertEqual(ConstructBinaryTreeFromPreorderAndInorderTraversal().buildTree(input.0, input.1), output)
  }

  func testBuildTree2() {
    let input = ([-1], [-1])
    let output = TreeNode([-1])
    XCTAssertEqual(ConstructBinaryTreeFromPreorderAndInorderTraversal().buildTree(input.0, input.1), output)
  }
}
