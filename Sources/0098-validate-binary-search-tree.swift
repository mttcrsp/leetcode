/// https://leetcode.com/problems/validate-binary-search-tree/
struct ValidateBinarySearchTree {
  func isValidBST(_ root: TreeNode?) -> Bool {
    func visit(_ node: TreeNode?, _ lhs: Int, _ rhs: Int) -> Bool {
      guard let node
      else { return true }

      guard lhs < node.val, node.val < rhs
      else { return false }

      return
        visit(node.left, lhs, node.val) &&
        visit(node.right, node.val, rhs)
    }

    return visit(root, .min, .max)
  }
}
