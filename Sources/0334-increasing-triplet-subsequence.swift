/// https://leetcode.com/problems/increasing-triplet-subsequence/
struct IncreasingTripletSubsequence {
  func increasingTriplet(_ nums: [Int]) -> Bool {
    var i = Int.max
    var j = Int.max
    for k in nums {
      if k <= i {
        i = k
      } else if k <= j {
        j = k
      } else {
        return true
      }
    }
    return false
  }
}
