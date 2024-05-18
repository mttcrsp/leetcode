/// https://leetcode.com/problems/merge-k-sorted-lists/
struct MergeKSortedLists {
  func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    var lists = lists
    while lists.count > 1 {
      var newLists: [ListNode?] = []
      for i in stride(from: 0, to: lists.count, by: 2) {
        if i+1 < lists.count {
          newLists.append(mergeLists(lists[i], lists[i+1]))
        } else {
          newLists.append(lists[i])
        }
      }
      lists = newLists
    }

    if let result = lists.first {
      return result
    } else {
      return nil
    }
  }

  func mergeLists(_ lhs: ListNode?, _ rhs: ListNode?) -> ListNode? {
    var lhs = lhs
    var rhs = rhs
    var head: ListNode?
    var tail: ListNode? { didSet { head = head ?? tail } }

    func consume(_ list: inout ListNode?) {
      tail?.next = list
      tail = list
      list = list?.next
    }

    while lhs != nil || rhs != nil {
      let lhsVal = lhs?.val ?? .max
      let rhsVal = rhs?.val ?? .max
      if lhsVal < rhsVal {
        consume(&lhs)
      } else {
        consume(&rhs)
      }
    }

    return head
  }
}
