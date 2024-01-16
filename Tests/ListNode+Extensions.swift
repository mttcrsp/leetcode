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

extension ListNode: CustomDebugStringConvertible {
  public var debugDescription: String {
    var nodes: [ListNode] = [self]
    while let node = nodes.last?.next {
      nodes.append(node)
    }
    return nodes.map(\.val).map(\.description).joined(separator: " -> ")
  }
}
