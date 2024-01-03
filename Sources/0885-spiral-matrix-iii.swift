/// https://leetcode.com/problems/spiral-matrix-iii/
struct SpiralMatrixIii {
  func spiralMatrixIII(_ rows: Int, _ cols: Int, _ rStart: Int, _ cStart: Int) -> [[Int]] {
    let xRange = 0 ..< cols
    let yRange = 0 ..< rows

    var position = Coordinate(x: cStart, y: rStart)
    var direction: Direction = .right
    var distance = 1
    var remaining = distance
    var result: [Coordinate] = [position]
    while result.count < rows*cols {
      if remaining > 0 {
        remaining -= 1
      } else {
        direction = direction.next
        distance += direction == .left || direction == .right ? 1 : 0
        remaining = distance-1
      }

      position = position.next(in: direction)
      if yRange ~= position.y, xRange ~= position.x {
        result.append(position)
      }
    }

    return result.map { [$0.y, $0.x] }
  }

  struct Coordinate: Hashable {
    var x: Int
    var y: Int

    func next(in direction: Direction) -> Coordinate {
      switch direction {
      case .up: .init(x: x, y: y-1)
      case .down: .init(x: x, y: y+1)
      case .left: .init(x: x-1, y: y)
      case .right: .init(x: x+1, y: y)
      }
    }
  }

  enum Direction {
    case right, down, left, up

    var next: Direction {
      switch self {
      case .right: .down
      case .down: .left
      case .left: .up
      case .up: .right
      }
    }
  }
}
