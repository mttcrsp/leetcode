extension Solution {
  func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    var valuesForDepth: [Int: [Int]] = [:]

    func visit(_ node: TreeNode?, depth: Int) {
      guard let node = node else { return }

      visit(node.left, depth: depth + 1)
      visit(node.right, depth: depth + 1)
      valuesForDepth[depth, default: []].append(node.val)
    }

    visit(root, depth: 0)

    let sortedLevels = valuesForDepth.sorted { lhs, rhs in
      lhs.key > rhs.key
    }

    var result: [[Int]] = []
    for (_, values) in sortedLevels {
      result.append(values)
    }
    return result
  }
}
