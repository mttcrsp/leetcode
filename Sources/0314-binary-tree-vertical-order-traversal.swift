import Collections

/// https://leetcode.com/problems/binary-tree-vertical-order-traversal/
class BinaryTreeVerticalOrderTraversal {
  func verticalOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }

    var minOffset = Int.max
    var maxOffset = Int.min
    var queue: Deque<(TreeNode, Int)> = [(root, 0)]
    var values: [Int: [Int]] = [:]
    while let (node, offset) = queue.popFirst() {
      values[offset, default: []].append(node.val)
      minOffset = min(minOffset, offset)
      maxOffset = max(maxOffset, offset)
      if let child = node.left {
        queue.append((child, offset-1))
      }
      if let child = node.right {
        queue.append((child, offset+1))
      }
    }

    var result: [[Int]] = []
    for offset in minOffset ... maxOffset {
      result.append(values[offset]!)
    }

    return result
  }
}
