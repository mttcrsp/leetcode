@testable
import Leetcode
import Testing

@Suite
struct MinimumDepthOfBinaryTreeTests {
  @Test func testMindepth1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = 2
    #expect(MinimumDepthOfBinaryTree().minDepth(input) == output)
  }

  @Test func testMindepth2() {
    let input = TreeNode([1, 2, 3, 4, 5])
    let output = 2
    #expect(MinimumDepthOfBinaryTree().minDepth(input) == output)
  }
}
