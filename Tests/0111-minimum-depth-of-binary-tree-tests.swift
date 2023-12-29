@testable
import Leetcode
import XCTest

final class MinimumDepthOfBinaryTreeTests: XCTestCase {
  func testTestMindepth1() {
    let input = TreeNode.makeTree(with: [3, 9, 20, nil, nil, 15, 7])
    let output = 2
    XCTAssertEqual(MinimumDepthOfBinaryTree().minDepth(input), output)
  }
}
