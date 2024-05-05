import Collections

/// https://leetcode.com/problems/merge-k-sorted-lists/
struct MergeKSortedLists {
  func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    let containers = lists.compactMap { list in
      if let list {
        Container(node: list)
      } else {
        nil
      }
    }

    var heap = Heap(containers)
    var head: ListNode?
    var curr: ListNode? {
      didSet { head = head ?? curr }
    }

    while let minContainer = heap.popMin() {
      curr?.next = minContainer.node
      curr = minContainer.node
      if let next = minContainer.node.next {
        heap.insert(Container(node: next))
      }
    }

    return head
  }

  private final class Container: Equatable, Comparable {
    var node: ListNode
    init(node: ListNode) {
      self.node = node
    }

    static func == (_ lhs: Container, _ rhs: Container) -> Bool {
      lhs.node.val == rhs.node.val
    }

    static func < (_ lhs: Container, _ rhs: Container) -> Bool {
      lhs.node.val < rhs.node.val
    }
  }
}
