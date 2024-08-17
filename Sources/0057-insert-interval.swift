/// https://leetcode.com/problems/insert-interval/
struct InsertInterval {
  func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    guard !intervals.isEmpty else { return [newInterval] }

    var inserted = false
    var unmerged: [[Int]] = []
    for interval in intervals {
      if !inserted, interval[0] > newInterval[0] {
        inserted = true
        unmerged.append(newInterval)
      } 
      unmerged.append(interval)
    }
    if !inserted {
      unmerged.append(newInterval)
    }

    func overlap(_ lhs: [Int], _ rhs: [Int]) -> Bool {
      lhs[0] <= rhs[1] && rhs[0] <= lhs[1]
    }

    var merged: [[Int]] = []
    for curr in unmerged {
      if let prev = merged.last, overlap(prev, curr) {
        merged[merged.count-1][1] = max(curr[1], prev[1])
      } else {
        merged.append(curr)
      }
    }

    return merged
  }
}
