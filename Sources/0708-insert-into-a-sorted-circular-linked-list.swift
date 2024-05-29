/// https://leetcode.com/problems/insert-into-a-sorted-circular-linked-list/
class InsertIntoASortedCircularLinkedList {
  func insert(_ head: Node?, _ insertVal: Int) -> Node? {
    guard let head else {
      let node = Node(insertVal)
      node.next = node
      return node
    }

    var prev = head
    var curr = head.next!
    var didInsert = false
    while true {
      if
        (prev.val <= insertVal && insertVal <= curr.val)
        || (curr.val < prev.val && insertVal < curr.val)
        || (curr.val < prev.val && insertVal > prev.val)
      {
        let node = Node(insertVal)
        node.next = curr
        prev.next = node
        didInsert = true
        break
      }

      prev = prev.next!
      curr = curr.next!
      if prev === head { break }
    }

    if !didInsert {
      let node = Node(insertVal)
      node.next = curr
      prev.next = node
    }

    return head
  }

  class Node {
    var val: Int
    var next: Node?
    init(_ val: Int) {
      self.val = val
      next = nil
    }
  }
}
