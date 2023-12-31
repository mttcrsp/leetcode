/// https://leetcode.com/problems/copy-list-with-random-pointer/
struct CopyListWithRandomPointer {
  func copyRandomList(_ head: Node?) -> Node? {
    var node = head
    while node != nil {
      let copy = Node(node!.val)
      copy.next = node?.next
      node?.next = copy
      node = copy.next
    }

    node = head
    while node != nil {
      node?.next?.random = node?.random?.next
      node = node?.next?.next
    }

    let copyHead = head?.next

    node = head
    while node != nil {
      let next = node?.next?.next
      let copy = node?.next
      node?.next = next
      copy?.next = next?.next
      node = next
    }

    return copyHead
  }

  class Node {
    var val: Int
    var next: Node?
    var random: Node?
    init(_ val: Int) {
      self.val = val
      next = nil
      random = nil
    }
  }
}
