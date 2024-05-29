/// https://leetcode.com/problems/convert-binary-search-tree-to-sorted-doubly-linked-list/
struct ConvertBinarySearchTreeToSortedDoublyLinkedList {
  func treeToDoublyList(_ root: Node?) -> Node? {
    var head: Node?
    var prev: Node?
    var stack: [Node] = []
    var curr: Node? = root
    while !stack.isEmpty || curr != nil {
      if let node = curr {
        stack.append(node)
        curr = node.left
      } else {
        let node = stack.removeLast()
        prev?.right = node
        node.left = prev
        prev = node
        head = head ?? node
        curr = node.right
      }
    }

    prev?.right = head
    head?.left = prev
    return head
  }

  class Node {
    var val: Int
    var left: Node?
    var right: Node?
    init(_ val: Int) {
      self.val = val
      left = nil
      right = nil
    }
  }
}
