extension Solution {
  func orangesRotting(_ grid: [[Int]]) -> Int {
    var fresh: Set<Position> = []
    var rotten: Set<Position> = []
    var states: [Position: State] = [:]

    for x in grid.indices {
      for y in grid[x].indices {
        if let state = State(rawValue: grid[x][y]) {
          let position = Position(x: x, y: y)

          states[position] = state
          switch state {
          case .fresh:
            fresh.insert(position)
          case .rotten:
            rotten.insert(position)
          }
        }
      }
    }

    var adjacency: [Position: Set<Position>] = [:]

    for (position, state) in states {
      for adjacent in position.adjacents {
        if states[adjacent] != nil {
          adjacency[position, default: []].insert(adjacent)
        }
      }

      if state == .fresh, adjacency[position] == nil {
        return -1
      }
    }

    var minute = 0

    while !fresh.isEmpty {
      if rotten.isEmpty {
        return -1
      }

      var newRotten: Set<Position> = []
      for position in rotten {
        let adjacents = adjacency[position, default: []]
        for adjacent in adjacents where fresh.contains(adjacent) {
          newRotten.insert(adjacent)
          fresh.remove(adjacent)
        }
      }

      rotten = newRotten
      minute += 1
    }

    return minute
  }
}

private enum State: Int {
  case fresh = 1, rotten = 2
}

private struct Position: Hashable {
  let x, y: Int
}

extension Position {
  var adjacents: Set<Position> {
    [
      Position(x: x + 1, y: y),
      Position(x: x - 1, y: y),
      Position(x: x, y: y + 1),
      Position(x: x, y: y - 1),
    ]
  }
}
