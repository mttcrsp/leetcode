/// https://leetcode.com/problems/intersection-of-two-linked-lists/
struct IntersectionOfTwoLinkedLists {
  func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    guard let headA = headA, let headB = headB else {
      return nil
    }

    let countA = countElements(inList: headA)
    let countB = countElements(inList: headB)

    let difference = countA - countB
    var pointerA: ListNode? = difference > 0 ? advance(headA, by: difference) : headA
    var pointerB: ListNode? = difference < 0 ? advance(headB, by: difference * -1) : headB

    while pointerA != nil, pointerB != nil, pointerA !== pointerB {
      pointerA = pointerA?.next
      pointerB = pointerB?.next
    }

    return pointerA === pointerB ? pointerA : nil
  }

  private func countElements(inList node: ListNode) -> Int {
    var node = node
    var count = 1
    while let next = node.next {
      count += 1
      node = next
    }
    return count
  }

  private func advance(_ node: ListNode, by distance: Int) -> ListNode? {
    var node: ListNode? = node
    for _ in 0 ..< distance {
      node = node?.next
    }
    return node
  }
}
