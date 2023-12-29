/// https://leetcode.com/problems/subtree-of-another-tree/
struct SubtreeOfAnotherTree {
  func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    guard let subRoot else { return true }

    var stack = [root]
    while !stack.isEmpty {
      guard let node = stack.removeLast() else {
        continue
      }

      if node.val == subRoot.val, SameTree().isSameTree(node, subRoot) {
        return true
      }

      stack.append(node.left)
      stack.append(node.right)
    }
    return false
  }
}
