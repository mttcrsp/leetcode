import Collections

/// https://leetcode.com/problems/binary-tree-vertical-order-traversal/
class BinaryTreeVerticalOrderTraversal {
  func verticalOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }

    var minColumn = 0
    var maxColumn = 0
    var columnToValues: [Int: [Int]] = [:]
    var queue: Deque<(TreeNode, column: Int)> = [(root, 0)]
    while let (node, column) = queue.popFirst() {
      minColumn = min(minColumn, column)
      maxColumn = max(maxColumn, column)
      columnToValues[column, default: []].append(node.val)
      if let child = node.left {
        queue.append((child, column-1))
      }
      if let child = node.right {
        queue.append((child, column+1))
      }
    }

    var result: [[Int]] = []
    for column in minColumn ... maxColumn {
      result.append(columnToValues[column]!)
    }

    return result
  }
}
