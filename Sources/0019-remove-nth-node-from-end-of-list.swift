/// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
struct RemoveNthNodeFromEndOfList {
  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    if head == nil { return nil }

    var nodes: [ListNode] = []
    var current = head

    while let node = current {
      nodes.append(node)
      current = node.next
    }

    let index = nodes.count - n
    if index == 0 {
      return nodes[index].next
    } else {
      nodes[index - 1].next = nodes[index].next
      return head
    }
  }
}
