/// https://leetcode.com/problems/lru-cache/
class LRUCache {
  let capacity: Int

  private var head: Node?
  private var tail: Node?
  private var dictionary: [Int: Node] = [:]

  init(_ capacity: Int) {
    self.capacity = capacity
  }

  func get(_ key: Int) -> Int {
    guard let node = dictionary[key] else { return -1 }
    remove(node)
    prepend(node)
    return node.value
  }

  func put(_ key: Int, _ value: Int) {
    let node = dictionary[key] ?? Node(key: key, value: value)
    node.value = value
    remove(node)
    prepend(node)
    dictionary[key] = node

    if dictionary.count > capacity, let tail {
      dictionary[tail.key] = nil
      remove(tail)
    }
  }

  private func prepend(_ node: Node) {
    if let head {
      head.prev = node
      node.next = head
      self.head = node
    } else {
      head = node
      tail = node
    }
  }

  private func remove(_ node: Node) {
    if node === head { head = head?.next }
    if node === tail { tail = tail?.prev }
    node.prev?.next = node.next
    node.next?.prev = node.prev
    node.prev = nil
    node.next = nil
  }

  class Node {
    let key: Int
    var value: Int
    var prev: Node?
    var next: Node?
    init(key: Int, value: Int) {
      self.key = key
      self.value = value
    }
  }
}
