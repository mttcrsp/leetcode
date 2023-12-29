/// https://leetcode.com/problems/binary-tree-inorder-traversal/
struct BinaryTreeInorderTraversal {
  func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []

    func visit(_ node: TreeNode?) {
      guard let node else { return }
      visit(node.left)
      result.append(node.val)
      visit(node.right)
    }

    visit(root)

    return result
  }
}
