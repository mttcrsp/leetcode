@testable
import Leetcode
import Testing

@Suite
struct CountGoodNodesInBinaryTreeTests {
  @Test func testGoodnodes1() {
    let input = TreeNode([3, 1, 4, 3, nil, 1, 5])
    let output = 4
    #expect(CountGoodNodesInBinaryTree().goodNodes(input) == output)
  }

  @Test func testGoodnodes2() {
    let input = TreeNode([3, 3, nil, 4, 2])
    let output = 3
    #expect(CountGoodNodesInBinaryTree().goodNodes(input) == output)
  }

  @Test func testGoodnodes3() {
    let input = TreeNode([1])
    let output = 1
    #expect(CountGoodNodesInBinaryTree().goodNodes(input) == output)
  }

  @Test func testGoodnodes4() {
    let input = TreeNode([9, nil, 3, 6])
    let output = 1
    #expect(CountGoodNodesInBinaryTree().goodNodes(input) == output)
  }
}
