@testable
import Leetcode

extension ListNode {
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
