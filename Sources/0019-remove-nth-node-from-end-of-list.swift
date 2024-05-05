/// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
struct RemoveNthNodeFromEndOfList {
  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var count = 0
    var curr = head
    while curr != nil {
      count += 1
      curr = curr?.next
    }

    let targetIndex = count-n
    guard targetIndex > 0 else {
      return head?.next
    }

    var prev: ListNode?
    var currIndex = 0
    curr = head
    while curr != nil {
      if currIndex == targetIndex {
        prev?.next = curr?.next
      } else {
        prev = curr
      }
      curr = curr?.next
      currIndex += 1
    }

    return head
  }
}
