/// https://leetcode.com/problems/non-overlapping-intervals/
struct NonOverlappingIntervals {
  func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
    let intervals = intervals.sorted { $0[0] < $1[0] }

    var erased = 0
    var endTime = intervals[0][1]
    for interval in intervals.dropFirst() {
      if interval[0] >= endTime {
        endTime = interval[1]
      } else {
        erased += 1
        endTime = min(endTime, interval[1])
      }
    }

    return erased
  }
}
