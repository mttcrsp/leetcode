/// https://leetcode.com/problems/baseball-game/
struct BaseballGame {
  func calPoints(_ operations: [String]) -> Int {
    var validRoundsPoints: [Int] = []

    for operation in operations {
      if let points = Int(operation) {
        validRoundsPoints.append(points)
      } else if operation == "+" {
        assert(validRoundsPoints.count >= 2, "Invalid report found: recorded '+' round when there were not two valid previous rounds.")
        validRoundsPoints.append(validRoundsPoints[validRoundsPoints.count-1]+validRoundsPoints[validRoundsPoints.count-2])
      } else if operation == "D" {
        assert(!validRoundsPoints.isEmpty, "Invalid report found: recorded 'D' when there was not a valid previous round.")
        validRoundsPoints.append(validRoundsPoints[validRoundsPoints.count-1]*2)
      } else if operation == "C" {
        assert(!validRoundsPoints.isEmpty, "Invalid report found: recorded 'C' when there was not a valid previous round.")
        validRoundsPoints.removeLast()
      } else {
        assertionFailure("Invalid operation of type '\(operation)'")
      }
    }

    var sum = 0
    for points in validRoundsPoints {
      sum += points
    }
    return sum
  }
}
