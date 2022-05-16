/// https://leetcode.com/problems/validate-binary-search-tree/
struct ValidateBinarySearchTree {
  func isValidBST(_ root: TreeNode?) -> Bool {
    var previous: Int?
    var isValid = true

    func visit(_ node: TreeNode?) {
      guard let node = node, isValid else { return }

      visit(node.left)
      if let previous = previous {
        isValid = isValid && node.val > previous
      }
      previous = node.val
      visit(node.right)
    }

    visit(root)

    return isValid
  }
}
