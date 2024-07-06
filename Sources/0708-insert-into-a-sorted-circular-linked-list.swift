/// https://leetcode.com/problems/insert-into-a-sorted-circular-linked-list/
class InsertIntoASortedCircularLinkedList {
  func insert(_ head: Node?, _ insertVal: Int) -> Node? {
    guard let head else {
      let node = Node(insertVal)
      node.next = node
      return node
    }

    var prev: Node! = head
    var curr: Node! = head.next
    repeat {
      let inBetween = prev.val <= insertVal && insertVal <= curr.val
      let isMax = prev.val > curr.val && insertVal >= prev.val
      let isMin = prev.val > curr.val && insertVal <= curr.val
      if inBetween || isMax || isMin { break }
      curr = curr.next
      prev = prev.next
    } while prev !== head

    let node = Node(insertVal)
    node.next = curr
    prev.next = node
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
