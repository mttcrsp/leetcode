/// https://leetcode.com/problems/odd-even-linked-list/
struct OddEvenLinkedList {
  func oddEvenList(_ head: ListNode?) -> ListNode? {
    var odd = head
    var even = head?.next
    let evenHead = head?.next
    while even != nil, even?.next != nil {
      odd?.next = odd?.next?.next
      odd = odd?.next
      even?.next = even?.next?.next
      even = even?.next
    }
    odd?.next = evenHead

    return head
  }
}
