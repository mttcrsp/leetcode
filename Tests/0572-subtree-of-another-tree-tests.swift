@testable
import Leetcode
import Testing

@Suite
struct SubtreeOfAnotherTreeTests {
  @Test func testIssubtree1() {
    let input = ([3, 4, 5, 1, 2], [4, 1, 2])
    let output = true
    let root = TreeNode(input.0)
    let subTree = TreeNode(input.1)
    #expect(SubtreeOfAnotherTree().isSubtree(root, subTree) == output)
  }

  @Test func testIssubtree2() {
    let input = ([3, 4, 5, 1, 2, nil, nil, nil, nil, 0], [4, 1, 2])
    let output = false
    let root = TreeNode(input.0)
    let subTree = TreeNode(input.1)
    #expect(SubtreeOfAnotherTree().isSubtree(root, subTree) == output)
  }
}
