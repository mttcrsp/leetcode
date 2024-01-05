/// https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/
struct LongestZigzagPathInABinaryTree {
  func longestZigZag(_ root: TreeNode?) -> Int {
    var longest = 0
    func visit(_ node: TreeNode?) -> (Int, Int) {
      guard let node else { return (0, 0) }
      let lhsPrev = visit(node.left)
      let rhsPrev = visit(node.right)
      let lhs = lhsPrev.1+1
      let rhs = rhsPrev.0+1
      longest = max(longest, lhs, rhs)
      return (lhs, rhs)
    }

    _ = visit(root)
    return longest-1
  }
}
