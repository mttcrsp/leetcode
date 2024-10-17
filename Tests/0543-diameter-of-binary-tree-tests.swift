@testable
import Leetcode
import Testing

@Suite
struct DiameterOfBinaryTreeTests {
  @Test func testDiameterOfBinaryTree1() {
    let input = TreeNode([1, 2, 3, 4, 5])
    let output = 3
    #expect(DiameterOfBinaryTree().diameterOfBinaryTree(input) == output)
  }

  @Test func testDiameterOfBinaryTree2() {
    let input = TreeNode([1, 2])
    let output = 1
    #expect(DiameterOfBinaryTree().diameterOfBinaryTree(input) == output)
  }
}
