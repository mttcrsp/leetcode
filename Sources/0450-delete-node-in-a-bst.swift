/// https://leetcode.com/problems/delete-node-in-a-bst/
struct DeleteNodeInABst {
  func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
    guard let root else { return nil }

    if key < root.val {
      root.left = deleteNode(root.left, key)
    } else if key > root.val {
      root.right = deleteNode(root.right, key)
    } else {
      if root.left == nil {
        return root.right
      } else if root.right == nil {
        return root.left
      } else {
        var successor = root.right!
        while let node = successor.left {
          successor = node
        }
        root.val = successor.val
        root.right = deleteNode(root.right, root.val)
      }
    }

    return root
  }
}
