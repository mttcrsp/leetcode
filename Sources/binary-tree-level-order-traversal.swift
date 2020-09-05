extension Solution {
  func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var result: [[Int]] = []
    var depth = 0

    func visit(_ node: TreeNode?) {
      guard let node = node else { return }

      if depth < result.count {
        result[depth].append(node.val)
      } else {
        result.append([node.val])
      }

      depth += 1
      visit(node.left)
      visit(node.right)
      depth -= 1
    }

    visit(root)

    return result
  }
}
