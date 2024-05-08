/// https://leetcode.com/problems/binary-tree-vertical-order-traversal/
class BinaryTreeVerticalOrderTraversal {
  func verticalOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }

    var nodes: [Int: [Int]] = [:]
    var frontier = [(root, 0)]
    while !frontier.isEmpty {
      var nextFrontier: [(TreeNode, Int)] = []
      for (node, offset) in frontier {
        nodes[offset, default: []].append(node.val)
        if let child = node.left {
          nextFrontier.append((child, offset-1))
        }
        if let child = node.right {
          nextFrontier.append((child, offset+1))
        }
      }
      frontier = nextFrontier
    }

    var result: [[Int]] = []
    for key in nodes.keys.sorted() {
      result.append(nodes[key]!)
    }

    return result
  }
}
