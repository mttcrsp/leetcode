/// https://leetcode.com/problems/merge-intervals/
struct MergeIntervals {
  func merge(_ intervals: [[Int]]) -> [[Int]] {
    let sortedIntervals = intervals.sorted { lhs, rhs in
      lhs.start < rhs.start
    }

    var result: [Interval] = []
    for interval in sortedIntervals {
      guard let previousInterval = result.last else {
        result.append(interval)
        continue
      }

      let isOverlapping = interval.start <= previousInterval.end
      if isOverlapping {
        let newIntervalStart = previousInterval.start
        let newIntervalEnd = max(interval.end, previousInterval.end)
        let newInterval = [newIntervalStart, newIntervalEnd]
        result.removeLast()
        result.append(newInterval)
      } else {
        result.append(interval)
      }
    }

    return result
  }
}

private typealias Interval = [Int]

private extension Interval {
  var start: Int {
    self[0]
  }

  var end: Int {
    self[1]
  }
}
