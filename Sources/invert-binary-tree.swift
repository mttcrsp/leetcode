struct InvertBinaryTree {
  func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    _ = invertTree(root.left)
    _ = invertTree(root.right)
    swap(&root.left, &root.right)
    return root
  }
}
