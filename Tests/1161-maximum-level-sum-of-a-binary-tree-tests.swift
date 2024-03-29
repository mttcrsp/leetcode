@testable
import Leetcode
import XCTest

final class MaximumLevelSumOfABinaryTreeTests: XCTestCase {
  func testMaxlevelsum1() {
    let input = TreeNode([1, 7, 0, 7, -8, nil, nil])
    let output = 2
    XCTAssertEqual(MaximumLevelSumOfABinaryTree().maxLevelSum(input), output)
  }

  func testMaxlevelsum2() {
    let input = TreeNode([989, nil, 10250, 98693, -89388, nil, nil, nil, -32127])
    let output = 2
    XCTAssertEqual(MaximumLevelSumOfABinaryTree().maxLevelSum(input), output)
  }
}
