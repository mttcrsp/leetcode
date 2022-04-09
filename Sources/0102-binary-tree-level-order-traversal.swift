/// https://leetcode.com/problems/binary-tree-level-order-traversal/
struct BinaryTreeLevelOrderTraversal {
  func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }

    var frontier: [TreeNode] = [root]
    var result: [[Int]] = []

    while !frontier.isEmpty {
      result.append(frontier.map(\.val))

      var nextFrontier: [TreeNode] = []
      for node in frontier {
        if let node = node.left { nextFrontier.append(node) }
        if let node = node.right { nextFrontier.append(node) }
      }
      frontier = nextFrontier
    }

    return result
  }
}
