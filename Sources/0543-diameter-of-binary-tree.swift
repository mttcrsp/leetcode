/// https://leetcode.com/problems/diameter-of-binary-tree/
struct DiameterOfBinaryTree {
  func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var result = 0
    func visit(_ node: TreeNode? = root) -> Int {
      guard let node else { return 0 }
      let lhs = visit(node.left)
      let rhs = visit(node.right)
      result = max(result, lhs+rhs)
      return max(lhs, rhs)+1
    }
    _ = visit()

    return result
  }
}
