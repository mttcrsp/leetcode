/// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
struct LowestCommonAncestorOfABinarySearchTree {
  func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode!, _ q: TreeNode!) -> TreeNode? {
    guard let root else { return nil }

    if p.val < root.val, q.val < root.val {
      return lowestCommonAncestor(root.left, p, q)
    }

    if p.val > root.val, q.val > root.val {
      return lowestCommonAncestor(root.right, p, q)
    }

    return root
  }
}
