/// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
struct RemoveNthNodeFromEndOfList {
  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var count = 0
    var node = head
    while node != nil {
      node = node?.next
      count += 1
    }

    if n == count {
      return head?.next
    }

    node = head
    for _ in 0 ..< count-n-1 {
      node = node?.next
    }

    node?.next = node?.next?.next
    return head
  }
}
