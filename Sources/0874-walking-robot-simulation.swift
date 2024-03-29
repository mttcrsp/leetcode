/// https://leetcode.com/problems/walking-robot-simulation/
struct WalkingRobotSimulation {
  func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
    var obstaclesByX: [Int: [Int]] = [:]
    for obstacle in obstacles {
      obstaclesByX[obstacle[0], default: []].append(obstacle[1])
    }

    var currentDirection = Direction.north
    var currentPosition = Position.initial
    var maxDistance = 0

    for command in commands {
      switch command {
      case -1:
        currentDirection = currentDirection.right
      case -2:
        currentDirection = currentDirection.left
      case _ where command >= 1 && command <= 9:
        for _ in 0 ..< command {
          let nextPosition = currentPosition.next(in: currentDirection)

          if obstaclesByX[nextPosition.x]?.contains(nextPosition.y) ?? false {
            break
          } else {
            currentPosition = nextPosition

            let distance = currentPosition.distance
            if maxDistance < distance {
              maxDistance = distance
            }
          }
        }
      case _:
        preconditionFailure("Unexpected command: \(command)")
      }
    }

    return maxDistance
  }
}

private struct Position: Equatable {
  let x, y: Int
}

private extension Position {
  static let initial = Position(x: 0, y: 0)

  func next(in direction: Direction) -> Position {
    let x = x+direction.adjustment.x
    let y = y+direction.adjustment.y
    return .init(x: x, y: y)
  }

  var distance: Int {
    (x*x)+(y*y)
  }

  init(obstacle: [Int]) {
    self.init(x: obstacle[0], y: obstacle[1])
  }
}

private enum Direction {
  case north, east, south, west
}

private extension Direction {
  var adjustment: (x: Int, y: Int) {
    switch self {
    case .east: (1, 0)
    case .west: (-1, 0)
    case .north: (0, 1)
    case .south: (0, -1)
    }
  }

  var right: Direction {
    switch self {
    case .north: .east
    case .east: .south
    case .south: .west
    case .west: .north
    }
  }

  var left: Direction {
    switch self {
    case .north: .west
    case .west: .south
    case .south: .east
    case .east: .north
    }
  }
}
