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
}
