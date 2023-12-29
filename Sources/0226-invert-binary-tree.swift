/// https://leetcode.com/problems/invert-binary-tree/
struct InvertBinaryTree {
  func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root else { return nil }
    _ = invertTree(root.left)
    _ = invertTree(root.right)
    swap(&root.left, &root.right)
    return root
  }
}
