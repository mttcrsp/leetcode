@testable
import Leetcode
import XCTest

final class BinaryTreeMaximumPathSumTests: XCTestCase {
  func testMaxPathSum1() {
    let input = TreeNode([1, 2, 3])
    let output = 6
    XCTAssertEqual(BinaryTreeMaximumPathSum().maxPathSum(input), output)
  }

  func testMaxPathSum2() {
    let input = TreeNode([-10, 9, 20, nil, nil, 15, 7])
    let output = 42
    XCTAssertEqual(BinaryTreeMaximumPathSum().maxPathSum(input), output)
  }
}
