@testable
import Leetcode
import XCTest

final class MaximumLevelSumOfABinaryTreeTests: XCTestCase {
  func testTestMaxlevelsum1() {
    let input = TreeNode.makeTree(with: [1, 7, 0, 7, -8, nil, nil])
    let output = 2
    XCTAssertEqual(MaximumLevelSumOfABinaryTree().maxLevelSum(input), output)
  }

  func testTestMaxlevelsum2() {
    let input = TreeNode.makeTree(with: [989, nil, 10250, 98693, -89388, nil, nil, nil, -32127])
    let output = 2
    XCTAssertEqual(MaximumLevelSumOfABinaryTree().maxLevelSum(input), output)
  }
}
