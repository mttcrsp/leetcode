@testable
import Leetcode
import XCTest

final class DiameterOfBinaryTreeTests: XCTestCase {
  func testDiameterOfBinaryTree1() {
    let input = TreeNode([1, 2, 3, 4, 5])
    let output = 3
    XCTAssertEqual(DiameterOfBinaryTree().diameterOfBinaryTree(input), output)
  }

  func testDiameterOfBinaryTree2() {
    let input = TreeNode([1, 2])
    let output = 1
    XCTAssertEqual(DiameterOfBinaryTree().diameterOfBinaryTree(input), output)
  }
}
