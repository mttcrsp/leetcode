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
    repeat {
      var insert = false
      if prev.val <= insertVal, insertVal <= curr.val {
        insert = true
      } else if prev.val > curr.val {
        if prev.val <= insertVal || insertVal <= curr.val {
          insert = true
        }
      }

      if insert {
        let node = Node(insertVal)
        node.next = curr
        prev.next = node
        return head
      }

      prev = curr
      curr = curr.next!
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
