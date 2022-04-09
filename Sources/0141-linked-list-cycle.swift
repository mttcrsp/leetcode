/// https://leetcode.com/problems/linked-list-cycle/
struct LinkedListCycle {
  func hasCycle(_ head: ListNode?) -> Bool {
    var visited: Set<Int> = []
    var curr = head

    while let node = curr {
      let ptr = unsafeBitCast(node, to: Int.self)
      let (inserted, _) = visited.insert(ptr)
      if !inserted { return true }
      curr = node.next
    }

    return false
  }
}
