/// https://leetcode.com/problems/monotonic-array/
// You could achieve the same result with even less operations and no extra space
struct MonotonicArray {
  func isMonotonic(_ A: [Int]) -> Bool {
    guard A.count > 2 else { return true }

    var direction = Direction.unknown
    var reference = A[0]

    for number in A {
      switch (direction, compare(number, reference)) {
      case (.increasing, .more), (.decreasing, .less): reference = number
      case (.unknown, .more): reference = number; direction = .increasing
      case (.unknown, .less): reference = number; direction = .decreasing
      case (.increasing, .less), (.decreasing, .more): return false
      case (_, .equal): continue
      }
    }

    return true
  }

  private enum Direction {
    case unknown, increasing, decreasing
  }

  private enum ComparisonResult {
    case equal, less, more
  }

  private func compare(_ x: Int, _ y: Int) -> ComparisonResult {
    if x < y {
      return .less
    } else if x > y {
      return .more
    } else {
      return .equal
    }
  }
}
