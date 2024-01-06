/// https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/
struct DeleteTheMiddleNodeOfALinkedList {
  func deleteMiddle(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else { return nil }

    var slow = head
    var fast = head
    var prev: ListNode?
    while fast?.next != nil {
      fast = fast?.next?.next
      prev = slow
      slow = slow?.next
    }

    prev?.next = slow?.next
    return head
  }
}
