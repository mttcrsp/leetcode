/// https://leetcode.com/problems/validate-binary-search-tree/
struct ValidateBinarySearchTree {
  func isValidBST(_ root: TreeNode?) -> Bool {
    var nodes: [TreeNode] = []

    func inOrderVisit(_ node: TreeNode?) {
      guard let node = node else { return }
      inOrderVisit(node.left)
      nodes.append(node)
      inOrderVisit(node.right)
    }

    inOrderVisit(root)

    for (lhs, rhs) in zip(nodes, nodes.dropFirst()) where lhs.val >= rhs.val {
      return false
    }
    return true
  }
}
