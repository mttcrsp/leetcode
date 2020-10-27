class MyCalendar {
  private var ranges: [Range<Int>] = []

  // Can be improved by keeping track of intervals within a binary tree rather
  // than a simple array. This would become O(logN) rather than O(N).
  func book(_ start: Int, _ end: Int) -> Bool {
    let range = start ..< end
    let overlaps = ranges.contains { other in
      other.overlaps(range)
    }
    if !overlaps {
      ranges.append(range)
    }
    return !overlaps
  }
}
