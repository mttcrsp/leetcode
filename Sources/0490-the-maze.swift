import Collections

/// https://leetcode.com/problems/the-maze/
struct TheMaze {
  func hasPath(_ maze: [[Int]], _ start: [Int], _ end: [Int]) -> Bool {
    let rows = maze.count
    let cols = maze[0].count

    let directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    func destination(from current: [Int], in direction: [Int]) -> [Int] {
      var next = current
      next[0] += direction[0]
      next[1] += direction[1]

      guard
        next[0] >= 0, next[0] < rows,
        next[1] >= 0, next[1] < cols,
        maze[next[0]][next[1]] == 0
      else { return current }
      return destination(from: next, in: direction)
    }

    var visited: Set<[Int]> = [start]
    var queue: Deque<[Int]> = [start]
    while let source = queue.popFirst() {
      for direction in directions {
        let destination = destination(from: source, in: direction)
        if !visited.contains(destination) {
          if destination == end {
            return true
          } else {
            visited.insert(destination)
            queue.append(destination)
          }
        }
      }
    }

    return false
  }
}
