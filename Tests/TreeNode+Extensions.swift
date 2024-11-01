import Collections
@testable
import Leetcode

extension TreeNode {
  convenience init?(_ values: [Int?]) {
    var values = Deque(values)

    guard case let first?? = values.popFirst()
    else { return nil }
    self.init(first)

    var queue: Deque = [self]
    while let node = queue.popFirst(), !values.isEmpty {
      if case let val?? = values.popFirst() {
        let child = TreeNode(val)
        node.left = child
        queue.append(child)
      }
      if case let val?? = values.popFirst() {
        let child = TreeNode(val)
        node.right = child
        queue.append(child)
      }
    }
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
