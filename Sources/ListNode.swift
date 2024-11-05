class ListNode {
  var val: Int
  var next: ListNode?
  init(_ val: Int) {
    self.val = val
    next = nil
  }
}

extension ListNode: Equatable {
  public static func == (_ lhs: ListNode, _ rhs: ListNode) -> Bool {
    var lhs: ListNode? = lhs
    var rhs: ListNode? = rhs
    while lhs != nil, rhs != nil, lhs?.val == rhs?.val {
      lhs = lhs?.next
      rhs = rhs?.next
    }
    return lhs == nil && rhs == nil
  }
}

extension ListNode: CustomDebugStringConvertible {
  public var debugDescription: String {
    var nodes: [ListNode] = [self]
    while let node = nodes.last?.next {
      nodes.append(node)
    }

    return nodes.map(\.val.description)
      .joined(separator: " -> ")
  }
}
