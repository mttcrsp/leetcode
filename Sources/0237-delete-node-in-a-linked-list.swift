/// https://leetcode.com/problems/delete-node-in-a-linked-list/
struct DeleteNodeInALinkedList {
  func deleteNode(_ node: ListNode?) {
    node?.val = node!.next!.val
    node?.next = node!.next!.next
  }
}
