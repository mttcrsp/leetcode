/// https://leetcode.com/problems/reorder-list/
struct ReorderList {
  func reorderList(_ head: ListNode?) {
    var fast = head
    var slow = head
    while fast?.next != nil {
      fast = fast?.next?.next
      slow = slow?.next
    }

    var prev: ListNode?
    var curr = slow
    while curr != nil {
      let next = curr?.next
      curr?.next = prev
      prev = curr
      curr = next
    }

    var lhs = head
    var rhs = prev
    var node: ListNode?
    while lhs != nil, rhs != nil {
      let lhsNext = lhs?.next
      let rhsNext = rhs?.next
      node?.next = lhs
      node = lhs
      node?.next = rhs
      node = rhs
      lhs = lhsNext
      rhs = rhsNext
    }
    node?.next = nil
  }
}
