/// https://leetcode.com/problems/split-linked-list-in-parts/
struct SplitLinkedListInParts {
  func splitListToParts(_ head: ListNode?, _ k: Int) -> [ListNode?] {
    var listCount = 0
    var node = head
    while node != nil {
      listCount += 1
      node = node?.next
    }

    let basePartCount = listCount/k
    var largerParts = listCount%k
    var parts: [ListNode?] = []
    var prev: ListNode?
    var curr = head
    for _ in 0 ..< k {
      var partCount = basePartCount
      if largerParts > 0 {
        partCount += 1
        largerParts -= 1
      }

      parts.append(curr)
      for _ in 0 ..< partCount {
        prev = curr
        curr = curr?.next
      }
      prev?.next = nil
    }

    return parts
  }
}
