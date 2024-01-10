@testable
import Leetcode
import XCTest

final class InvertBinaryTreeTests: XCTestCase {
  func testInvertTree1() {
    let input = TreeNode([4, 2, 7, 1, 3, 6, 9])
    let output = TreeNode([4, 7, 2, 9, 6, 3, 1])
    XCTAssertEqual(InvertBinaryTree().invertTree(input), output)
  }

  func testInvertTree2() {
    let input = TreeNode([2, 1, 3])
    let output = TreeNode([2, 3, 1])
    XCTAssertEqual(InvertBinaryTree().invertTree(input), output)
  }
}
