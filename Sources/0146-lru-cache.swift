/// https://leetcode.com/problems/lru-cache/
class LRUCache {
  private let capacity: Int
  private var nodes: [Int: Node<Pair>] = [:]
  private var list = DoubleLinkedList<Pair>()

  init(_ capacity: Int) {
    self.capacity = capacity
  }

  func get(_ key: Int) -> Int {
    if let node = nodes[key] {
      list.remove(node)
      list.setHead(node)
      return node.value.value
    }

    return -1
  }

  func put(_ key: Int, _ value: Int) {
    let node = Node(Pair(key: key, value: value))

    if let node = nodes[key] {
      list.remove(node)
      nodes[key] = nil
    }

    if nodes.count + 1 > capacity {
      let tail = list.tail!
      list.remove(tail)
      nodes[tail.value.key] = nil
    }

    list.setHead(node)
    nodes[key] = node
  }
}

private struct Pair {
  let key, value: Int
}

private final class DoubleLinkedList<Value> {
  private(set) var head, tail: Node<Value>?

  func setHead(_ node: Node<Value>) {
    if head == nil {
      head = node
      tail = node
    } else {
      head?.prev = node
      node.next = head
      head = node
    }
  }

  func remove(_ node: Node<Value>) {
    if node === head {
      head = node.next
    }
    if node === tail {
      tail = node.prev
    }

    node.prev?.next = node.next
    node.next?.prev = node.prev
    node.prev = nil
    node.next = nil
  }
}

private final class Node<Value> {
  var next, prev: Node?

  let value: Value

  init(_ value: Value) {
    self.value = value
  }
}
