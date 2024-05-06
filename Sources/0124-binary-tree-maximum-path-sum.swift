/// https://leetcode.com/problems/binary-tree-maximum-path-sum/
struct BinaryTreeMaximumPathSum {
  func maxPathSum(_ root: TreeNode?) -> Int {
    var result: Int?
    func visit(_ node: TreeNode?) -> Int {
      guard let node else { return 0 }
      let lhs = visit(node.left)
      let rhs = visit(node.right)
      let splitN = max(lhs, rhs, 0)+node.val
      let splitY = lhs+rhs+node.val
      result = max(result ?? Int.min, splitN, splitY)
      return splitN
    }

    _ = visit(root)
    return result!
  }
}
