/// https://leetcode.com/problems/reverse-linked-list/
struct ReverseLinkedList {
  func reverseList(_ head: ListNode?) -> ListNode? {
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
