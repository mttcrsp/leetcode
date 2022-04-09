/// https://leetcode.com/problems/symmetric-tree/
struct SymmetricTree {
  func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }

    func visit(_ lhs: TreeNode?, _ rhs: TreeNode?) -> Bool {
      switch (lhs, rhs) {
      case (.none, .none):
        return true
      case (.some, .none), (.none, .some):
        return false
      case let (.some(lhs), .some(rhs)):
        return lhs.val == rhs.val && visit(lhs.left, rhs.right) && visit(lhs.right, rhs.left)
      }
    }

    return visit(root.left, root.right)
  }
}
