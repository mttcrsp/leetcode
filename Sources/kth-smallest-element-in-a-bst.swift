extension Solution {
  func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    var count = 0
    var result: Int?

    func visit(_ node: TreeNode?) {
      if let node = node, count < k {
        visit(node.left)
        count += 1
        if count == k {
          result = node.val
        }
        visit(node.right)
      }
    }

    visit(root)

    precondition(result != nil, "Input BTS contains less that k elements")
    return result!
  }
}
