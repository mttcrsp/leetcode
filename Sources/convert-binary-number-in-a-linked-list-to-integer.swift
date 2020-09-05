extension Solution {
  func getDecimalValue(_ head: ListNode?) -> Int {
    var number = 0

    var current = head
    while let node = current {
      number = number << 1
      number = number | node.val
      current = node.next
    }

    return number
  }
}
