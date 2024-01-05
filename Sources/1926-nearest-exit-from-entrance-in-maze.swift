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
    let queue = Queue<(Coordinate, Int)>()
    queue.push((entrance, 0))

    var visited: Set<Coordinate> = []
    while let (position, distance) = queue.pop() {
      guard !visited.contains(position) else { continue }
      visited.insert(position)

      for direction in Direction.allCases {
        let neighbour = position.neighbour(in: direction)
        if !isInside(neighbour), position != entrance {
          return distance
        } else if isInside(neighbour), location(at: neighbour) == "." {
          queue.push((neighbour, distance+1))
        }
      }
    }

    return -1
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
