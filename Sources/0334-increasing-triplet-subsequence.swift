/// https://leetcode.com/problems/increasing-triplet-subsequence/
struct IncreasingTripletSubsequence {
  func increasingTriplet(_ nums: [Int]) -> Bool {
    var max = Int.max
    var min = Int.max
    for num in nums {
      if num <= min {
        min = num
      } else if num <= max {
        max = num
      } else {
        return true
      }
    }
    return false
  }
}
