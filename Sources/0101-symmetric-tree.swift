/// https://leetcode.com/problems/symmetric-tree/
struct SymmetricTree {
  func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let root else { return true }

    func visit(_ lhs: TreeNode?, _ rhs: TreeNode?) -> Bool {
      switch (lhs, rhs) {
      case (.none, .none):
        true
      case (.some, .none), (.none, .some):
        false
      case let (.some(lhs), .some(rhs)):
        lhs.val == rhs.val && visit(lhs.left, rhs.right) && visit(lhs.right, rhs.left)
      }
    }

    return visit(root.left, root.right)
  }
}
