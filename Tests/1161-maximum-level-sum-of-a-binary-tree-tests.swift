@testable
import Leetcode
import Testing

@Suite
struct MaximumLevelSumOfABinaryTreeTests {
  @Test func testMaxlevelsum1() {
    let input = TreeNode([1, 7, 0, 7, -8, nil, nil])
    let output = 2
    #expect(MaximumLevelSumOfABinaryTree().maxLevelSum(input) == output)
  }

  @Test func testMaxlevelsum2() {
    let input = TreeNode([989, nil, 10250, 98693, -89388, nil, nil, nil, -32127])
    let output = 2
    #expect(MaximumLevelSumOfABinaryTree().maxLevelSum(input) == output)
  }
}
