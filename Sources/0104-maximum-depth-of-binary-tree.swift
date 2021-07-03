struct MaximumDepthOfBinaryTree {
  func maxDepth(_ root: TreeNode?) -> Int {
    var maxDepth = 0

    func visit(_ node: TreeNode?, depth: Int) {
      guard let node = node else { return }
      maxDepth = max(maxDepth, depth)
      visit(node.left, depth: depth + 1)
      visit(node.right, depth: depth + 1)
    }

    visit(root, depth: 1)

    return maxDepth
  }
}
