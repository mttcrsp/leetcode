/// https://leetcode.com/problems/convert-binary-search-tree-to-sorted-doubly-linked-list/
struct ConvertBinarySearchTreeToSortedDoublyLinkedList {
  func treeToDoublyList(_ root: Node?) -> Node? {
    var head: Node?
    var prev: Node?
    func visit(_ curr: Node? = root) {
      guard let curr else { return }
      visit(curr.left)
      prev?.right = curr
      curr.left = prev
      prev = curr
      head = head ?? curr
      visit(curr.right)
    }
    visit()

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
