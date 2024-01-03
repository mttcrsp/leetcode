/// https://leetcode.com/problems/minimum-distance-to-the-target-element/
struct MinimumDistanceToTheTargetElement {
  func getMinDistance(_ nums: [Int], _ target: Int, _ start: Int) -> Int {
    var minDistance = Int.max
    for (i, num) in nums.enumerated() {
      if num == target {
        minDistance = min(minDistance, abs(i-start))
      }
    }
    return minDistance
  }
}
