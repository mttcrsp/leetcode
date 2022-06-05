/// https://leetcode.com/problems/balanced-binary-tree/
struct BalancedBinaryTree {
  func isBalanced(_ root: TreeNode?) -> Bool {
    var foundImbalance = false

    func visit(_ node: TreeNode?) -> Int {
      guard !foundImbalance, let node = node else { return 0 }
      let heightLHS = visit(node.left)
      let heightRHS = visit(node.right)
      foundImbalance = abs(heightLHS - heightRHS) > 1
      return 1 + max(heightLHS, heightRHS)
    }

    _ = visit(root)

    return !foundImbalance
  }
}
