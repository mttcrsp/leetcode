/// https://leetcode.com/problems/subtree-of-another-tree/
struct SubtreeOfAnotherTree {
  func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    guard let root
    else { return false }

    guard !isSameTree(root, subRoot)
    else { return true }

    return
      isSubtree(root.left, subRoot) ||
      isSubtree(root.right, subRoot)
  }

  private func isSameTree(_ lhs: TreeNode?, _ rhs: TreeNode?) -> Bool {
    guard lhs != nil || rhs != nil else { return true }
    guard lhs?.val == rhs?.val else { return false }
    return isSameTree(lhs?.left, rhs?.left) && isSameTree(lhs?.right, rhs?.right)
  }
}
