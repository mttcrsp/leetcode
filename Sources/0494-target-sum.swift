/// https://leetcode.com/problems/target-sum/
struct TargetSum {
  func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
    var sums = [0: 1]
    for num in nums {
      var newSums: [Int: Int] = [:]
      for sum in sums.keys {
        let count = sums[sum, default: 0]
        newSums[sum+num, default: 0] += count
        newSums[sum-num, default: 0] += count
      }
      sums = newSums
    }
    return sums[target, default: 0]
  }
}
