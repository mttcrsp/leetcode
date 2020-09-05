extension Solution {
  func reorderList(_ head: ListNode?) {
    guard let head = head else { return }

    var array: [ListNode] = []

    func traverse(_ node: ListNode?) {
      if let node = node {
        array.append(node)
        traverse(node.next)
      }
    }

    traverse(head)

    var list = array.removeFirst()
    var i = 1

    while !array.isEmpty {
      let next = i & 1 == 0
        ? array.removeFirst()
        : array.removeLast()

      list.next = next
      list = next

      i += 1

      if array.isEmpty {
        list.next = nil
      }
    }
  }
}
