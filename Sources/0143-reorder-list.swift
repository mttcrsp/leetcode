/// https://leetcode.com/problems/reorder-list/
struct ReorderList {
  func reorderList(_ head: ListNode?) {
    var nodes: [ListNode] = []
    var node = head
    while let current = node {
      nodes.append(current)
      node = current.next
    }

    node = head
    for i in nodes.indices {
      if i % 2 == 0 {
        node?.next = nodes[nodes.count - 1 - (i / 2)]
      } else {
        node?.next = nodes[(i + 1) / 2]
      }
      node = node?.next
    }
    node?.next = nil
  }
}
