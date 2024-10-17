@testable
import Leetcode
import Testing

@Suite
struct BinaryTreeMaximumPathSumTests {
  @Test func testMaxPathSum1() {
    let input = TreeNode([1, 2, 3])
    let output = 6
    #expect(BinaryTreeMaximumPathSum().maxPathSum(input) == output)
  }

  @Test func testMaxPathSum2() {
    let input = TreeNode([-10, 9, 20, nil, nil, 15, 7])
    let output = 42
    #expect(BinaryTreeMaximumPathSum().maxPathSum(input) == output)
  }
}
