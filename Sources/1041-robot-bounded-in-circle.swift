/// https://leetcode.com/problems/robot-bounded-in-circle/
struct RobotBoundedInCircle {
  func isRobotBounded(_ instructions: String) -> Bool {
    var state = State()
    state.consumeInstructions(instructions)
    return (state.position.x == 0 && state.position.y == 0) || state.direction != .top
  }
}

private struct Position {
  var x = 0, y = 0
}

private enum Direction {
  case top, right, bottom, left
}

private struct State {
  var position = Position(x: 0, y: 0)
  var direction: Direction = .top

  mutating func consumeInstructions(_ instructions: String) {
    for instruction in instructions {
      switch instruction {
      case "G": goStraight()
      case "L": rotateLeft()
      case "R": rotateRight()
      default: assertionFailure("Unrecognized instruction \(instruction)")
      }
    }
  }

  mutating func goStraight() {
    switch direction {
    case .top: position.y += 1
    case .left: position.x += 1
    case .bottom: position.y -= 1
    case .right: position.x -= 1
    }
  }

  mutating func rotateLeft() {
    switch direction {
    case .top: direction = .left
    case .left: direction = .bottom
    case .bottom: direction = .right
    case .right: direction = .top
    }
  }

  mutating func rotateRight() {
    switch direction {
    case .top: direction = .right
    case .right: direction = .bottom
    case .bottom: direction = .left
    case .left: direction = .top
    }
  }
}
