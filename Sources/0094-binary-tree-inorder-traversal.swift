/// https://leetcode.com/problems/binary-tree-inorder-traversal/
struct BinaryTreeInorderTraversal {
  func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []

    var stack: [TreeNode] = []
    var current = root
    while !stack.isEmpty || current != nil {
      while current != nil {
        stack.append(current!)
        current = current?.left
      }

      let node = stack.removeLast()
      result.append(node.val)
      current = node.right
    }

    return result
  }
}
