@testable
import Leetcode
import Testing

@Suite
struct MaximumDepthOfBinaryTreeTests {
  @Test func testMaxDepth1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = 3
    #expect(MaximumDepthOfBinaryTree().maxDepth(input) == output)
  }

  @Test func testMaxDepth2() {
    let input = TreeNode([1, nil, 2])
    let output = 2
    #expect(MaximumDepthOfBinaryTree().maxDepth(input) == output)
  }

  @Test func testMaxDepth3() {
    let input = TreeNode([])
    let output = 0
    #expect(MaximumDepthOfBinaryTree().maxDepth(input) == output)
  }

  @Test func testMaxDepth4() {
    let input = TreeNode([0])
    let output = 1
    #expect(MaximumDepthOfBinaryTree().maxDepth(input) == output)
  }
}
