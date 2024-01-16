/// https://leetcode.com/problems/rotate-list/
struct RotateList {
  func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    guard k > 0, head != nil else { return head }

    var node = head
    var tail = head
    var count = 0
    while node != nil {
      tail = node
      node = node?.next
      count += 1
    }

    guard k%count != 0, head !== tail else { return head }

    var newTail = head
    for _ in 0 ..< count-(k%count)-1 {
      newTail = newTail?.next
    }

    let newHead = newTail?.next
    newTail?.next = nil
    tail?.next = head
    return newHead
  }
}
