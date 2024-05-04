/// https://leetcode.com/problems/merge-two-sorted-lists/
struct MergeTwoSortedLists {
  func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var list1 = list1
    var list2 = list2
    var head: ListNode?
    var curr: ListNode? {
      didSet { head = head ?? curr }
    }

    func advance(_ node: inout ListNode?) {
      curr?.next = node
      curr = node
      node = node?.next
    }

    loop: while true {
      switch (list1, list2) {
      case let (node1?, node2?) where node1.val < node2.val: advance(&list1)
      case (.some, .some): advance(&list2)
      case (.some, .none): advance(&list1)
      case (.none, .some): advance(&list2)
      case (nil, nil): break loop
      }
    }

    return head
  }
}
