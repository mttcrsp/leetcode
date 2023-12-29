/// https://leetcode.com/problems/remove-covered-intervals/
struct RemoveCoveredIntervals {
  func removeCoveredIntervals(_ intervals: [[Int]]) -> Int {
    let sortedIntervals = intervals.sorted { lhs, rhs in
      lhs[0] < rhs[0]
    }

    var lhs = -1, rhs = -1, count = 0
    for interval in sortedIntervals {
      if interval.lhs > lhs, interval.rhs > rhs {
        lhs = interval.lhs
        count += 1
      }
      rhs = max(interval.rhs, rhs)
    }

    return count
  }
}

private extension [Int] {
  var lhs: Int { self[0] }
  var rhs: Int { self[1] }
}
