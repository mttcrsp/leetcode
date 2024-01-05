/// https://leetcode.com/problems/maximum-depth-of-binary-tree/
struct MaximumDepthOfBinaryTree {
  func maxDepth(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    let lhsDepth = maxDepth(root.left)
    let rhsDepth = maxDepth(root.right)
    return max(lhsDepth, rhsDepth)+1
  }
}
