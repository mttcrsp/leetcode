/// https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
struct RemoveDuplicatesFromSortedListIi {
  func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var newHead: ListNode?
    var newTail: ListNode?
    var current = head
    while current != nil {
      var successor = current
      while successor?.next?.val == current?.val {
        successor = successor?.next
      }

      guard current === successor
      else { current = successor?.next; continue }

      if newHead == nil {
        newHead = current
        newTail = current
      } else {
        newTail?.next = current
        newTail = current
      }

      current = current?.next
      newTail?.next = nil
    }

    return newHead
  }
}
