/// https://leetcode.com/problems/check-if-there-is-a-valid-path-in-a-grid/
struct CheckIfThereIsAValidPathInAGrid {
  func hasValidPath(_ grid: [[Int]]) -> Bool {
    var neighbours: [Location: Set<Location>] = [:]
    for y in grid.indices {
      for x in grid[y].indices {
        let streetType = grid[y][x]
        let location = Location(x: x, y: y)
        for direction in streetType.directions {
          let next = location.next(in: direction)
          if grid.indices ~= next.y, grid[y].indices ~= next.x {
            neighbours[location, default: []].insert(next)
          }
        }
      }
    }

    for (source, destinations) in neighbours {
      for destination in destinations {
        if !neighbours[destination, default: []].contains(source) {
          neighbours[source]?.remove(destination)
        }
      }
    }

    let start = Location(x: 0, y: 0)
    let end = Location(x: grid[0].count-1, y: grid.count-1)

    var visited: Set<Location> = []
    var frontier: Set<Location> = [start]
    while let location = frontier.popFirst() {
      guard !visited.contains(location) else { continue }
      visited.insert(location)

      guard location != end else { return true }
      for neighbour in neighbours[location, default: []] {
        frontier.insert(neighbour)
      }
    }

    return false
  }

  fileprivate enum Direction: CaseIterable {
    case up, down, left, right
  }

  private struct Location: Hashable {
    let x: Int
    let y: Int
    func next(in direction: Direction) -> Location {
      switch direction {
      case .up: .init(x: x, y: y-1)
      case .down: .init(x: x, y: y+1)
      case .left: .init(x: x-1, y: y)
      case .right: .init(x: x+1, y: y)
      }
    }
  }

  fileprivate typealias StreetType = Int
}

private extension CheckIfThereIsAValidPathInAGrid.StreetType {
  var directions: [CheckIfThereIsAValidPathInAGrid.Direction] {
    switch self {
    case 1: [.left, .right]
    case 2: [.up, .down]
    case 3: [.left, .down]
    case 4: [.right, .down]
    case 5: [.left, .up]
    case 6: [.right, .up]
    default: preconditionFailure("unexpected street type '\(self)'")
    }
  }
}
