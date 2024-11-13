/// https://leetcode.com/problems/count-the-number-of-fair-pairs/
struct CountTheNumberOfFairPairs {
  func countFairPairs(_ nums: [Int], _ lower: Int, _ upper: Int) -> Int {
    let nums = nums.sorted()

    func lowerBound(_ index: Int, _ target: Int) -> Int {
      var lhs = index
      var rhs = nums.count-1
      while lhs <= rhs {
        let mid = (lhs+rhs)/2
        if nums[mid] >= target {
          rhs = mid-1
        } else {
          lhs = mid+1
        }
      }

      return lhs
    }

    var result = 0
    for i in nums.indices {
      let lhs = lowerBound(i+1, lower-nums[i])
      let rhs = lowerBound(i+1, upper-nums[i]+1)
      result += rhs-lhs
    }

    return result
  }
}
