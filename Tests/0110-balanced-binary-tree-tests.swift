@testable
import Leetcode
import Testing

@Suite
struct BalancedBinaryTreeTests {
  @Test func testIsbalanced1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = true
    #expect(BalancedBinaryTree().isBalanced(input) == output)
  }

  @Test func testIsbalanced2() {
    let input = TreeNode([1, 2, 2, 3, 3, nil, nil, 4, 4])
    let output = false
    #expect(BalancedBinaryTree().isBalanced(input) == output)
  }

  @Test func testIsbalanced3() {
    let input = TreeNode([])
    let output = true
    #expect(BalancedBinaryTree().isBalanced(input) == output)
  }
}
