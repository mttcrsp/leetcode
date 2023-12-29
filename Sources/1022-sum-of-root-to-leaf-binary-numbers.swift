/// https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/
struct SumOfRootToLeafBinaryNumbers {
  func sumRootToLeaf(_ root: TreeNode?) -> Int {
    var result = 0
    var current = 0

    func visit(_ node: TreeNode?) {
      guard let node else { return }

      current = (current << 1) | node.val
      defer {
        current = current >> 1
      }

      if node.left == nil, node.right == nil {
        result += current
      } else {
        visit(node.left)
        visit(node.right)
      }
    }

    visit(root)

    return result
  }
}
