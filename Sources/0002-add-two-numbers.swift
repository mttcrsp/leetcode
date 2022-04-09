/// https://leetcode.com/problems/add-two-numbers/
struct AddTwoNumbers {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var lhs = l1
    var rhs = l2
    var initial: ListNode?
    var node: ListNode?
    var remainder = 0

    while lhs != nil || rhs != nil {
      let lhsValue = lhs?.val ?? 0
      let rhsValue = rhs?.val ?? 0
      let sum = lhsValue + rhsValue + remainder
      let current = ListNode(sum % 10)

      initial = initial ?? current
      remainder = sum / 10
      node?.next = current
      node = current

      lhs = lhs?.next
      rhs = rhs?.next

      if remainder == 0, lhs == nil || rhs == nil {
        node?.next = lhs ?? rhs; break
      }
    }

    if remainder > 0 {
      node?.next = ListNode(remainder)
    }

    return initial
  }
}
