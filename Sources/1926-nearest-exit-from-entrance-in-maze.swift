import Collections

/// https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/
struct NearestExitFromEntranceInMaze {
  func nearestExit(_ maze: [[Character]], _ entrance: [Int]) -> Int {
    func location(at coordinate: Coordinate) -> Character {
      maze[coordinate.y][coordinate.x]
    }
    func isInside(_ coordinate: Coordinate) -> Bool {
      maze.indices.contains(coordinate.y) &&
        maze[coordinate.y].indices.contains(coordinate.x)
    }

    let entrance = Coordinate(x: entrance[1], y: entrance[0])
    var queue: Deque = [(entrance, 0)]
    var visited: Set<Coordinate> = []
    while let (position, distance) = queue.popFirst() {
      guard !visited.contains(position) else { continue }
      visited.insert(position)

      for direction in Direction.allCases {
        let neighbour = position.neighbour(in: direction)
        if !isInside(neighbour), position != entrance {
          return distance
        } else if isInside(neighbour), location(at: neighbour) == "." {
          queue.append((neighbour, distance+1))
        }
      }
    }

    return -1
  }

  struct Coordinate: Hashable {
    let x, y: Int

    func neighbour(in direction: Direction) -> Coordinate {
      switch direction {
      case .up: .init(x: x, y: y-1)
      case .down: .init(x: x, y: y+1)
      case .left: .init(x: x-1, y: y)
      case .right: .init(x: x+1, y: y)
      }
    }
  }

  enum Direction: CaseIterable {
    case up, down, left, right
  }
}
