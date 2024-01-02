/// https://leetcode.com/problems/spiral-matrix-iv/
struct SpiralMatrixIv {
  func spiralMatrix(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
    let row = [Int](repeating: -1, count: n)
    var matrix = [[Int]](repeating: row, count: m)

    var bounds = Bounds(h: 0 ..< n, v: 0 ..< m)
    var position: Coordinate = .init(x: 0, y: 0)
    var direction: Direction = .right

    var node = head
    while let current = node {
      defer { node = node?.next }

      matrix[position.y][position.x] = current.val

      var next = position.next(in: direction)
      if !bounds.contains(next) {
        direction = direction.next
        bounds = bounds.next(in: direction)
        next = position.next(in: direction)
      }

      position = next
    }

    return matrix
  }

  struct Bounds {
    var h: Range<Int>
    var v: Range<Int>

    func contains(_ coordinate: Coordinate) -> Bool {
      v ~= coordinate.y && h ~= coordinate.x
    }

    func next(in direction: Direction) -> Bounds {
      var copy = self
      switch direction {
      case .right: copy.h = h.lowerBound+1 ..< h.upperBound
      case .left: copy.h = h.lowerBound ..< h.upperBound-1
      case .down: copy.v = v.lowerBound+1 ..< v.upperBound
      case .up: copy.v = v.lowerBound ..< v.upperBound-1
      }
      return copy
    }
  }

  struct Coordinate: Hashable {
    let x: Int
    let y: Int

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
