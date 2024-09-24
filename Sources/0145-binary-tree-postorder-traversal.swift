/// https://leetcode.com/problems/binary-tree-postorder-traversal/
struct BinaryTreePostorderTraversal {
  func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []
    func visit(_ node: TreeNode? = root) {
      guard let node else { return }
      visit(node.left)
      visit(node.right)
      result.append(node.val)
    }

    visit()
    return result
  }
}
