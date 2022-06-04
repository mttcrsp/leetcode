/// https://leetcode.com/problems/lru-cache/
class LRUCache {
  let capacity: Int

  private var head: Node?
  private var tail: Node?
  private var nodes: [Int: Node] = [:]

  init(_ capacity: Int) {
    self.capacity = capacity
  }

  func get(_ key: Int) -> Int {
    if let node = nodes[key] {
      remove(node)
      append(node)
      return node.val
    } else {
      return -1
    }
  }

  func put(_ key: Int, _ val: Int) {
    if let node = nodes[key] {
      remove(node)
      append(node)
      node.val = val
    } else {
      let node = Node(key, val)
      nodes[key] = node
      append(node)

      if nodes.count > capacity, let head = head {
        nodes[head.key] = nil
        remove(head)
      }
    }
  }

  private func append(_ node: Node) {
    if head == nil {
      head = node
      tail = node
    } else {
      node.prev = tail
      tail?.next = node
      tail = node
    }
  }

  private func remove(_ node: Node) {
    if node === head { head = node.next }
    if node === tail { tail = node.prev }
    node.prev?.next = node.next
    node.next?.prev = node.prev
    node.prev = nil
    node.next = nil
  }

  private final class Node {
    var next, prev: Node?
    var val, key: Int
    init(_ key: Int, _ val: Int) {
      self.key = key
      self.val = val
    }
  }
}
