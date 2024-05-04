/// https://leetcode.com/problems/reverse-linked-list/
struct ReverseLinkedList {
  func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode?
    var curr = head
    while curr != nil {
      let next = curr?.next
      curr?.next = prev
      prev = curr
      curr = next
    }

    return prev
  }
}
