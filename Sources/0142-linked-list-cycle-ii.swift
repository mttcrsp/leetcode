/// https://leetcode.com/problems/linked-list-cycle-ii/
struct LinkedListCycleIi {
  func detectCycle(_ head: ListNode?) -> ListNode? {
    var addresses: Set<Int> = []
    var current = head

    while let node = current {
      let address = unsafeBitCast(node, to: Int.self)
      let (didInsert, _) = addresses.insert(address)

      if didInsert {
        current = node.next
      } else {
        return node
      }
    }

    return nil
  }
}
