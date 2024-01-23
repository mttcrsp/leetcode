/// https://leetcode.com/problems/remove-nodes-from-linked-list/
struct RemoveNodesFromLinkedList {
  func removeNodes(_ head: ListNode?) -> ListNode? {
    var values: [Int] = []
    var node = head
    while let current = node {
      values.append(current.val)
      node = node?.next
    }

    for i in values.indices.dropLast().reversed() {
      if values[i] < values[i+1] {
        values.remove(at: i)
      }
    }

    var nodes: [ListNode] = []
    for value in values {
      nodes.append(ListNode(value))
    }

    for i in nodes.indices.dropLast() {
      nodes[i].next = nodes[i+1]
    }

    return nodes.first
  }
}
