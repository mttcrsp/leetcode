/// https://leetcode.com/problems/populating-next-right-pointers-in-each-node/
struct PopulatingNextRightPointersInEachNode {
  func connect(_ root: Node?) -> Node? {
    var curr = root
    var next = root?.left
    while curr != nil || next != nil {
      if curr == nil {
        curr = next
        next = curr?.left
      } else {
        curr?.left?.next = curr?.right
        curr?.right?.next = curr?.next?.left
        curr = curr?.next
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
