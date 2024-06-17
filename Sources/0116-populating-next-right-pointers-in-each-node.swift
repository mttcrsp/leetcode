/// https://leetcode.com/problems/populating-next-right-pointers-in-each-node/
struct PopulatingNextRightPointersInEachNode {
  func connect(_ root: Node?) -> Node? {
    guard let root else { return nil }

    var curr: Node? = root
    var next: Node? = root.left
    while curr != nil, next != nil {
      curr?.left?.next = curr?.right
      if curr?.next != nil {
        curr?.right?.next = curr?.next?.left
      }

      curr = curr?.next
      if curr == nil {
        curr = next
        next = next?.left
      }
    }

    return root
  }

  class Node {
    var val: Int
    var left: Node?
    var right: Node?
    var next: Node?
    init(_ val: Int) {
      self.val = val
      left = nil
      right = nil
      next = nil
    }
  }
}
