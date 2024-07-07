/// https://leetcode.com/problems/copy-list-with-random-pointer/
struct CopyListWithRandomPointer {
  func copyRandomList(_ head: Node?) -> Node? {
    var current = head
    while let node = current {
      let next = node.next
      let copy = Node(node.val)
      copy.next = next
      node.next = copy
      current = next
    }

    current = head
    while let node = current {
      let next = node.next?.next
      let copy = node.next
      copy?.random = node.random?.next
      current = next
    }

    let headCopy = head?.next
    current = head
    while let node = current {
      let next = node.next?.next
      let copy = node.next
      copy?.next = next?.next
      node.next = next
      current = next
    }

    return headCopy
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
