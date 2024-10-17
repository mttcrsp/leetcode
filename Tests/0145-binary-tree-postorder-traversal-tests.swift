@testable
import Leetcode
import Testing

@Suite
struct BinaryTreePostorderTraversalTests {
  @Test func testPostorderTraversal1() {
    let input = TreeNode([1, nil, 2, 3])
    let output = [3, 2, 1]
    #expect(BinaryTreePostorderTraversal().postorderTraversal(input) == output)
  }

  @Test func testPostorderTraversal2() {
    let input = TreeNode([1, 2, 3, 4, 5, nil, 8, nil, nil, 6, 7, 9])
    let output = [4, 6, 7, 5, 2, 9, 8, 3, 1]
    #expect(BinaryTreePostorderTraversal().postorderTraversal(input) == output)
  }

  @Test func testPostorderTraversal3() {
    let input = TreeNode([])
    let output = [] as [Int]
    #expect(BinaryTreePostorderTraversal().postorderTraversal(input) == output)
  }

  @Test func testPostorderTraversal4() {
    let input = TreeNode([1])
    let output = [1]
    #expect(BinaryTreePostorderTraversal().postorderTraversal(input) == output)
  }
}
