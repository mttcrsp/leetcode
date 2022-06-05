/// https://leetcode.com/problems/linked-list-cycle/
struct LinkedListCycle {
  func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    while fast != nil {
      slow = slow?.next
      fast = fast?.next?.next
      if fast != nil, slow === fast {
        return true
      }
    }

    return false
  }
}
