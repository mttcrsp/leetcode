import Collections

/// https://leetcode.com/problems/keys-and-rooms/
struct KeysAndRooms {
  func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    var visited: Set<Int> = []
    var queue: Deque = [0]
    while let room = queue.popFirst() {
      guard !visited.contains(room) else { continue }
      visited.insert(room)

      for key in rooms[room] {
        queue.append(key)
      }
    }

    return visited.count == rooms.count
  }
}
