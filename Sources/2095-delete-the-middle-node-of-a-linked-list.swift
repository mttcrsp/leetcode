/// https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/
struct DeleteTheMiddleNodeOfALinkedList {
  func deleteMiddle(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else { return nil }

    var nodes: [ListNode] = []
    var node = head
    while let current = node {
      nodes.append(current)
      node = node?.next
    }

    let mid = nodes.count/2
    let middleNode = nodes[mid]
    let middleNodePrev = nodes[mid-1]
    middleNodePrev.next = middleNode.next
    return head
  }
}
