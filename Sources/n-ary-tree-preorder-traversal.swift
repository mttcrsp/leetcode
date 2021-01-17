struct NAryTreePreorderTraversal {
  func preorder(_ root: NaryTreeNode?) -> [Int] {
    var result: [Int] = []

    func visit(_ node: NaryTreeNode?) {
      guard let node = node else { return }

      result.append(node.val)

      for child in node.children {
        visit(child)
      }
    }

    visit(root)

    return result
  }
}
