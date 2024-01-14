/// https://leetcode.com/problems/surrounded-regions/
struct SurroundedRegions {
  func solve(_ board: inout [[Character]]) {
    var sources: Set<Coordinate> = []
    for y in board.indices {
      let xs = 0, xe = board[y].count-1
      if board[y][xs] == "O" { sources.insert(.init(x: xs, y: y)) }
      if board[y][xe] == "O" { sources.insert(.init(x: xe, y: y)) }
    }

    for x in board[0].indices {
      let ys = 0, ye = board.count-1
      if board[ys][x] == "O" { sources.insert(.init(x: x, y: ys)) }
      if board[ye][x] == "O" { sources.insert(.init(x: x, y: ye)) }
    }

    var visited: Set<Coordinate> = []
    var frontier = sources
    while let coordinate = frontier.popFirst() {
      guard !visited.contains(coordinate) else { continue }
      visited.insert(coordinate)

      for direction in Direction.allCases {
        let next = coordinate.next(in: direction)
        if board.indices ~= next.y, board[next.y].indices ~= next.x, board[next.y][next.x] == "O" {
          frontier.insert(next)
        }
      }
    }

    for y in board.indices {
      for x in board[y].indices {
        if board[y][x] == "O", !visited.contains(.init(x: x, y: y)) {
          board[y][x] = "X"
        }
      }
    }
  }

  struct Coordinate: Hashable {
    let x, y: Int

    func next(in direction: Direction) -> Coordinate {
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
