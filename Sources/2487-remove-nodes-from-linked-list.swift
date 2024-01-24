/// https://leetcode.com/problems/remove-nodes-from-linked-list/
struct RemoveNodesFromLinkedList {
  func removeNodes(_ head: ListNode?) -> ListNode? {
    let tail = reverseNodes(head)

    var lhs = tail
    var mid = tail?.next
    var rhs = tail?.next?.next
    while mid != nil {
      if mid != nil, lhs != nil, mid!.val < lhs!.val {
        lhs?.next = rhs
      } else {
        lhs = lhs?.next
      }

      mid = mid?.next
      rhs = rhs?.next
    }

    return reverseNodes(tail)
  }

  func reverseNodes(_ head: ListNode?) -> ListNode? {
    var prev: ListNode?
    var curr: ListNode? = head
    while curr != nil {
      let node = curr?.next
      curr?.next = prev
      prev = curr
      curr = node
    }
    return prev
  }
}
