@testable
import Leetcode
import Testing

@Suite
struct LowestCommonAncestorOfABinarySearchTreeTests {
  @Test func testLowestcommonancestor1() {
    let tree = TreeNode([6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5])
    let input = (tree, tree?.find(2), tree?.find(8))
    let output = 6
    #expect(LowestCommonAncestorOfABinarySearchTree().lowestCommonAncestor(input.0, input.1, input.2)?.val == output)
  }

  @Test func testLowestcommonancestor4() {
    let tree = TreeNode([6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5])
    let input = (tree, tree?.find(2), tree?.find(4))
    let output = 2
    #expect(LowestCommonAncestorOfABinarySearchTree().lowestCommonAncestor(input.0, input.1, input.2)?.val == output)
  }

  @Test func testLowestcommonancestor7() {
    let tree = TreeNode([2, 1])
    let input = (tree, tree?.find(2), tree?.find(1))
    let output = 2
    #expect(LowestCommonAncestorOfABinarySearchTree().lowestCommonAncestor(input.0, input.1, input.2)?.val == output)
  }
}

private extension TreeNode {
  func find(_ val: Int) -> TreeNode? {
    var stack: [TreeNode?] = [self]
    while !stack.isEmpty {
      guard let node = stack.removeLast() else {
        continue
      }

      guard node.val != val else {
        return node
      }

      stack.append(node.left)
      stack.append(node.right)
    }
    return nil
  }
}
