@testable
import Leetcode
import Testing

@Suite
struct BinaryTreeLevelOrderTraversalTests {
  @Test func testLevelOrder1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = [[3], [9, 20], [15, 7]]
    #expect(BinaryTreeLevelOrderTraversal().levelOrder(input) == output)
  }

  @Test func testLevelOrder2() {
    let input = TreeNode([1])
    let output = [[1]]
    #expect(BinaryTreeLevelOrderTraversal().levelOrder(input) == output)
  }

  @Test func testLevelOrder3() {
    let input = TreeNode([])
    let output = [] as [[Int]]
    #expect(BinaryTreeLevelOrderTraversal().levelOrder(input) == output)
  }
}
