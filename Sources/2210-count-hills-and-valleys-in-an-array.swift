/// https://leetcode.com/problems/count-hills-and-valleys-in-an-array/
struct CountHillsAndValleysInAnArray {
  func countHillValley(_ nums: [Int]) -> Int {
    enum Trend { case increasing, decreasing }

    var result = 0
    var trend: Trend?
    for i in nums.indices.dropFirst() where nums[i] != nums[i-1] {
      let newTrend: Trend = nums[i-1] < nums[i] ? .increasing : .decreasing
      if let oldTrend = trend, oldTrend != newTrend {
        result += 1
      }

      trend = newTrend
    }

    return result
  }
}
