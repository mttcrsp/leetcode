/// https://leetcode.com/problems/odd-even-linked-list/
struct OddEvenLinkedList {
  func oddEvenList(_ head: ListNode?) -> ListNode? {
    var evenTail = head
    var oddTail = evenTail?.next
    let oddHead = oddTail

    var node = oddTail?.next
    var isEven = true
    while let current = node {
      defer { isEven.toggle() }
      node = node?.next
      if isEven {
        evenTail?.next = current
        evenTail = current
      } else {
        oddTail?.next = current
        oddTail = current
      }
    }

    evenTail?.next = oddHead
    oddTail?.next = nil
    return head
  }
}
