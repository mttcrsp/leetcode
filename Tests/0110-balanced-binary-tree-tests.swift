@testable
import Leetcode
import XCTest

final class BalancedBinaryTreeTests: XCTestCase {
  func testIsbalanced1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = true
    XCTAssertEqual(BalancedBinaryTree().isBalanced(input), output)
  }

  func testIsbalanced2() {
    let input = TreeNode([1, 2, 2, 3, 3, nil, nil, 4, 4])
    let output = false
    XCTAssertEqual(BalancedBinaryTree().isBalanced(input), output)
  }

  func testIsbalanced3() {
    let input = TreeNode([])
    let output = true
    XCTAssertEqual(BalancedBinaryTree().isBalanced(input), output)
  }
}
