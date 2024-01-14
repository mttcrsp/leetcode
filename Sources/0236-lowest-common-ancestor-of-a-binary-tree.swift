/// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
struct LowestCommonAncestorOfABinaryTree {
  func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    guard let p, let q else { return nil }

    var ancestor: TreeNode?
    func postOrderVisit(_ node: TreeNode?) -> (pFound: Bool, qFound: Bool) {
      guard let node else { return (false, false) }
      let lhs = postOrderVisit(node.left)
      let rhs = postOrderVisit(node.right)
      let pFound = node.val == p.val || lhs.pFound || rhs.pFound
      let qFound = node.val == q.val || lhs.qFound || rhs.qFound
      if ancestor == nil, pFound, qFound {
        ancestor = node
      }
      return (pFound, qFound)
    }
    _ = postOrderVisit(root)

    return ancestor
  }
}
