/// https://leetcode.com/problems/find-the-highest-altitude/
struct FindTheHighestAltitude {
  func largestAltitude(_ gain: [Int]) -> Int {
    var current = 0
    var maxAltitude = 0
    for gain in gain {
      current += gain
      maxAltitude = max(maxAltitude, current)
    }
    return maxAltitude
  }
}
