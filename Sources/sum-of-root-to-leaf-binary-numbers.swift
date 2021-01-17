struct SumOfRootToLeafBinaryNumbers {
  func sumRootToLeaf(_ root: TreeNode?) -> Int {
    var result = 0

    func visit(_ node: TreeNode, withContext context: Int) {
      let context = (context << 1) + node.val
      if let lhs = node.left { visit(lhs, withContext: context) }
      if let rhs = node.right { visit(rhs, withContext: context) }
      if node.left == nil, node.right == nil { result += context }
    }

    if let node = root { visit(node, withContext: 0) }

    return result
  }
}
