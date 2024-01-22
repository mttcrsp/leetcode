@testable
import Leetcode

extension ListNode {
  static func makeList(_ numbers: [Int]) -> ListNode? {
    let nodes = numbers.map(ListNode.init)
    for (node, next) in zip(nodes, nodes.dropFirst()) {
      node.next = next
    }
    return nodes.first
  }

  convenience init?(_ numbers: [Int]) {
    guard let first = numbers.first else { return nil }
    self.init(first)

    var previous: ListNode? = self
    for number in numbers.dropFirst() {
      previous?.next = ListNode(number)
      previous = previous?.next
    }
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
    return nodes.map(\.val).map(\.description).joined(separator: " -> ")
  }
}
