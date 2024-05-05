/// https://leetcode.com/problems/merge-k-sorted-lists/
struct MergeKSortedLists {
  func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    var head: ListNode?
    for list in lists {
      head = mergeLists(head, list)
    }
    return head
  }

  func mergeLists(_ lhs: ListNode?, _ rhs: ListNode?) -> ListNode? {
    var lhs = lhs
    var rhs = rhs
    var head: ListNode?
    var curr: ListNode? {
      didSet { head = head ?? curr }
    }

    func consume(_ list: inout ListNode?) {
      curr?.next = list
      curr = list
      list = list?.next
    }

    loop: while true {
      switch (lhs, rhs) {
      case let (node1?, node2?) where node1.val < node2.val: consume(&lhs)
      case (.some, .some): consume(&rhs)
      case (.none, .some): consume(&rhs)
      case (.some, .none): consume(&lhs)
      case (.none, .none): break loop
      }
    }

    return head
  }
}
