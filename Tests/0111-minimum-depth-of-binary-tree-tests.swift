@testable
import Leetcode
import XCTest

final class MinimumDepthOfBinaryTreeTests: XCTestCase {
  func testMindepth1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = 2
    XCTAssertEqual(MinimumDepthOfBinaryTree().minDepth(input), output)
  }

  func testMindepth2() {
    let input = TreeNode([1, 2, 3, 4, 5])
    let output = 2
    XCTAssertEqual(MinimumDepthOfBinaryTree().minDepth(input), output)
  }
}
