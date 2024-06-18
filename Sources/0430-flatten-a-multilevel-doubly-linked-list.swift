/// https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/
struct FlattenAMultilevelDoublyLinkedList {
  func flatten(_ head: Node?) -> Node? {
    guard let head else { return nil }

    var prev: Node?
    var stack: [Node] = [head]
    while let curr = stack.popLast() {
      if let node = curr.next { stack.append(node) }
      if let node = curr.child { stack.append(node) }
      curr.child = nil
      curr.prev = prev
      prev?.next = curr
      prev = curr
    }

    return head
  }

  class Node {
    var val: Int
    var prev: Node?
    var next: Node?
    var child: Node?
    init(_ val: Int) {
      self.val = val
      prev = nil
      next = nil
      child = nil
    }
  }
}
