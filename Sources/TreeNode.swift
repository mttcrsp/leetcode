final class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?

  init(_ val: Int) {
    left = nil
    right = nil
    self.val = val
  }
}

extension TreeNode: Equatable {
  public static func == (_ lhs: TreeNode, _ rhs: TreeNode) -> Bool {
    lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
  }
}

extension TreeNode: CustomDebugStringConvertible {
  public var debugDescription: String {
    var values: [Int?] = []
    var queue: [TreeNode?] = [self]
    while !queue.isEmpty {
      let node = queue.removeFirst()
      values.append(node?.val)
      if let node {
        queue.append(node.left)
        queue.append(node.right)
      }
    }

    return values.debugDescription
  }
}
