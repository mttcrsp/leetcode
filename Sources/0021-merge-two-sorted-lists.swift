struct MergeTwoSortedLists {
  func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil { return l2 }
    if l2 == nil { return l1 }

    var l1 = l1
    var l2 = l2
    var curr: ListNode?
    var head: ListNode?

    while let node1 = l1, let node2 = l2 {
      let next: ListNode
      if node1.val < node2.val {
        next = node1; l1 = node1.next
      } else {
        next = node2; l2 = node2.next
      }

      head = head ?? next
      curr?.next = next
      curr = next
    }

    if let node = l1 { curr?.next = node }
    if let node = l2 { curr?.next = node }

    return head
  }
}
