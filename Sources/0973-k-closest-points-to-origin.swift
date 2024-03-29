/// https://leetcode.com/problems/k-closest-points-to-origin/
struct KClosestPointsToOrigin {
  func kClosest(_ points: [[Int]], _ K: Int) -> [[Int]] {
    let sortedFromOrigin = points.sorted { lhs, rhs in
      lhs.distanceFromOrigin() < rhs.distanceFromOrigin()
    }
    return Array(sortedFromOrigin.prefix(K))
  }
}

private extension [Int] {
  func distanceFromOrigin() -> Int {
    (self[0]*self[0])+(self[1]*self[1])
  }
}
