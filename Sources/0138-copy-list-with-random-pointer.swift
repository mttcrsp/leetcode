/// https://leetcode.com/problems/copy-list-with-random-pointer/
struct CopyListWithRandomPointer {
  func copyRandomList(_ head: Node?) -> Node? {
    guard let head else { return nil }

    var copies: [Int: Node] = [:]
    var node: Node? = head
    while let curr = node {
      let currID = unsafeBitCast(curr, to: Int.self)
      copies[currID] = Node(curr.val)
      node = curr.next
    }

    node = head
    while let curr = node {
      let currID = unsafeBitCast(curr, to: Int.self)

      if let next = curr.next {
        let nextID = unsafeBitCast(next, to: Int.self)
        copies[currID]?.next = copies[nextID]
      }

      if let rand = curr.random {
        let randID = unsafeBitCast(rand, to: Int.self)
        copies[currID]?.random = copies[randID]
      }

      node = curr.next
    }

    let headID = unsafeBitCast(head, to: Int.self)
    return copies[headID]
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
