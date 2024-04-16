import Collections

class CBTInserter {
  private let root: TreeNode?
  private var queue: Deque<TreeNode> = []

  init(_ root: TreeNode?) {
    guard let root else {
      preconditionFailure("no root provided")
    }

    self.root = root

    var queue: Deque<TreeNode> = [root]
    while let node = queue.popFirst() {
      self.queue.append(node)

      if let node = node.left {
        queue.append(node)
      }
      if let node = node.right {
        queue.append(node)
      }
    }

    while let node = self.queue.first, node.left != nil, node.right != nil {
      self.queue.removeFirst()
    }
  }

  func get_root() -> TreeNode? {
    root
  }

  func insert(_ val: Int) -> Int {
    let node = TreeNode(val)
    queue.append(node)

    let head = queue[0]
    if head.left == nil {
      head.left = node
    } else {
      head.right = node
      queue.removeFirst()
    }

    return head.val
  }
}
