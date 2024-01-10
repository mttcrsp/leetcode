@testable
import Leetcode
import XCTest

final class MaximumDepthOfBinaryTreeTests: XCTestCase {
  func testMaxDepth1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = 3
    XCTAssertEqual(MaximumDepthOfBinaryTree().maxDepth(input), output)
  }

  func testMaxDepth2() {
    let input = TreeNode([1, nil, 2])
    let output = 2
    XCTAssertEqual(MaximumDepthOfBinaryTree().maxDepth(input), output)
  }

  func testMaxDepth3() {
    let input = TreeNode([])
    let output = 0
    XCTAssertEqual(MaximumDepthOfBinaryTree().maxDepth(input), output)
  }

  func testMaxDepth4() {
    let input = TreeNode([0])
    let output = 1
    XCTAssertEqual(MaximumDepthOfBinaryTree().maxDepth(input), output)
  }
}
