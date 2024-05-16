/// https://leetcode.com/problems/merge-intervals/
struct MergeIntervals {
  func merge(_ intervals: [[Int]]) -> [[Int]] {
    let intervals = intervals.sorted { lhs, rhs in
      lhs[0] < rhs[0]
    }

    var result: [[Int]] = []
    for curr in intervals {
      if let prev = result.last, curr[0] <= prev[1] {
        result[result.count-1][1] = max(curr[1], prev[1])
      } else {
        result.append(curr)
      }
    }

    return result
  }
}
