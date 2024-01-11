/// https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/
struct MinimumNumberOfArrowsToBurstBalloons {
  func findMinArrowShots(_ points: [[Int]]) -> Int {
    var previous: ClosedRange<Int>?
    var arrows = 0
    for point in points.sorted(by: { $0[0] < $1[0] }) {
      let range = point[0] ... point[1]
      if previous != nil, previous!.overlaps(range) {
        previous = previous!.clamped(to: range)
      } else {
        previous = range
        arrows += 1
      }
    }

    return arrows
  }
}
