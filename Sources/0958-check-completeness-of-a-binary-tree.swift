import Collections

/// https://leetcode.com/problems/check-completeness-of-a-binary-tree/
struct CheckCompletenessOfABinaryTree {
  func isCompleteTree(_ root: TreeNode?) -> Bool {
    guard let root else { return true }

    var didSkip = false
    var queue: Deque<TreeNode> = [root]
    while let node = queue.popFirst() {
      for child in [node.left, node.right] {
        switch child {
        case .some where didSkip: return false
        case let .some(child): queue.append(child)
        case .none: didSkip = true
        }
      }
    }

    return true
  }
}
