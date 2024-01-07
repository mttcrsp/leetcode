/// https://leetcode.com/problems/keys-and-rooms/
struct KeysAndRooms {
  func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    var visited: Set<Int> = []
    let queue = Queue<Int>()
    queue.push(0)
    while let room = queue.pop() {
      guard !visited.contains(room) else { continue }
      visited.insert(room)

      for key in rooms[room] {
        queue.push(key)
      }
    }

    return visited.count == rooms.count
  }

  class Queue<Value> {
    var head: Node?
    var tail: Node?

    func push(_ value: Value) {
      let node = Node(value)
      if head == nil {
        head = node
        tail = node
      } else {
        tail?.next = node
        tail = tail?.next
      }
    }

    func pop() -> Value? {
      let value = head?.value
      if tail === head {
        head = nil
        tail = nil
      } else {
        head = head?.next
      }
      return value
    }

    class Node {
      let value: Value
      var next: Node?
      init(_ value: Value) {
        self.value = value
      }
    }
  }
}
