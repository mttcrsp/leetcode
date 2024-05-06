/// https://leetcode.com/problems/binary-tree-level-order-traversal/
struct BinaryTreeLevelOrderTraversal {
  func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }
    var result: [[Int]] = []
    var stack = [(root, 0)]
    while let (node, level) = stack.popLast() {
      if level == result.count {
        result.append([node.val])
      } else {
        result[level].append(node.val)
      }

      if let child = node.right {
        stack.append((child, level+1))
      }
      if let child = node.left {
        stack.append((child, level+1))
      }
    }

    return result
  }
}
