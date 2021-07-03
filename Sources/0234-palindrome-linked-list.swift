struct PalindromeLinkedList {
  func isPalindrome(_ head: ListNode?) -> Bool {
    guard let head = head else { return true }

    var nodes: [ListNode] = [head]
    while let node = nodes.last?.next {
      nodes.append(node)
    }

    var i = 0
    var j = nodes.count - 1
    while i < j {
      if nodes[i].val != nodes[j].val {
        return false
      }
      i += 1
      j -= 1
    }
    return true
  }
}
