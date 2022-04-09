/// https://leetcode.com/problems/add-two-numbers-ii/
struct AddTwoNumbersIi {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var reversed1 = l1?.reversed()
    var reversed2 = l2?.reversed()
    var result: ListNode?
    var head: ListNode?
    var carry = 0

    while reversed1 != nil || reversed2 != nil {
      let lhs = reversed1?.val ?? 0
      let rhs = reversed2?.val ?? 0
      let val = lhs + rhs + carry

      let node = ListNode(val % 10)
      carry = val / 10

      if result == nil {
        result = node
        head = node
      } else {
        result?.next = node
        result = node
      }

      reversed1 = reversed1?.next
      reversed2 = reversed2?.next
    }

    if carry > 0 {
      let node = ListNode(carry)
      result?.next = node
      result = node
    }

    return head?.reversed()
  }
}

private extension ListNode {
  func reversed() -> ListNode {
    var prev: ListNode?
    var next: ListNode?
    var curr: ListNode? = self
    while curr != nil {
      next = curr?.next
      curr?.next = prev
      prev = curr
      curr = next
    }
    return prev!
  }
}
