/// https://leetcode.com/problems/sort-list/
struct SortList {
  func sortList(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else { return head }

    var prev: ListNode?
    var slow = head
    var fast = head
    while fast != nil, fast?.next != nil {
      prev = slow
      slow = slow?.next
      fast = fast?.next?.next
    }

    prev?.next = nil

    return mergeLists(
      sortList(head),
      sortList(slow)
    )
  }

  func mergeLists(_ lhs: ListNode?, _ rhs: ListNode?) -> ListNode? {
    var head: ListNode?
    var tail: ListNode?
    var lhs = lhs
    var rhs = rhs
    while let lhsVal = lhs?.val, let rhsVal = rhs?.val {
      let val: Int
      if lhsVal < rhsVal {
        lhs = lhs?.next
        val = lhsVal
      } else {
        rhs = rhs?.next
        val = rhsVal
      }

      let node = ListNode(val)
      if head == nil {
        head = node
        tail = node
      } else {
        tail?.next = node
        tail = node
      }
    }

    tail?.next = lhs ?? rhs

    return head
  }
}
