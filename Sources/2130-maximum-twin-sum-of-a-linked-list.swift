/// https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/
struct MaximumTwinSumOfALinkedList {
  func pairSum(_ head: ListNode?) -> Int {
    var elements: [Int] = []
    var node = head
    while let current = node {
      elements.append(current.val)
      node = current.next
    }

    var maxSum = 0
    var lhs = 0
    var rhs = elements.count-1
    while lhs < rhs {
      maxSum = max(maxSum, elements[lhs]+elements[rhs])
      lhs += 1
      rhs -= 1
    }

    return maxSum
  }
}
