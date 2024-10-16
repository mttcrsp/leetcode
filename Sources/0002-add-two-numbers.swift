/// https://leetcode.com/problems/add-two-numbers/
struct AddTwoNumbers {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var head: ListNode?
    var tail: ListNode?
    func append(_ val: Int) {
      let node = ListNode(val)
      head = head ?? node
      tail?.next = node
      tail = node
    }

    var carry = 0
    var l1 = l1
    var l2 = l2
    while l1 != nil || l2 != nil {
      var val = carry
      val += l1?.val ?? 0
      val += l2?.val ?? 0
      carry = val/10
      append(val%10)
      l1 = l1?.next
      l2 = l2?.next
    }
    if carry > 0 {
      append(carry)
    }

    return head
  }
}
