/// https://leetcode.com/problems/trim-a-binary-search-tree/
struct TrimABinarySearchTree {
  func trimBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> TreeNode? {
    func visit(_ node: TreeNode?) -> TreeNode? {
      guard let node else { return nil }

      if node.val < low {
        return visit(node.right)
      } else if node.val > high {
        return visit(node.left)
      } else {
        node.left = visit(node.left)
        node.right = visit(node.right)
        return node
      }
    }

    return visit(root)
  }
}
