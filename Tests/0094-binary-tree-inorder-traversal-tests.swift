@testable
import Leetcode
import Testing

@Suite
struct BinaryTreeInorderTraversalTests {
  @Test func testInordertraversal1() {
    let input = TreeNode([1, nil, 2, 3])
    let output = [1, 3, 2]
    #expect(BinaryTreeInorderTraversal().inorderTraversal(input) == output)
  }

  @Test func testInordertraversal2() {
    let input = TreeNode([])
    let output = [] as [Int]
    #expect(BinaryTreeInorderTraversal().inorderTraversal(input) == output)
  }

  @Test func testInordertraversal3() {
    let input = TreeNode([1])
    let output = [1]
    #expect(BinaryTreeInorderTraversal().inorderTraversal(input) == output)
  }
}
