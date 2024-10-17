@testable
import Leetcode
import Testing

@Suite
struct ConstructBinaryTreeFromPreorderAndInorderTraversalTests {
  @Test func testBuildTree1() {
    let input = ([3, 9, 20, 15, 7], [9, 3, 15, 20, 7])
    let output = TreeNode([3, 9, 20, nil, nil, 15, 7])
    #expect(ConstructBinaryTreeFromPreorderAndInorderTraversal().buildTree(input.0, input.1) == output)
  }

  @Test func testBuildTree2() {
    let input = ([-1], [-1])
    let output = TreeNode([-1])
    #expect(ConstructBinaryTreeFromPreorderAndInorderTraversal().buildTree(input.0, input.1) == output)
  }
}
