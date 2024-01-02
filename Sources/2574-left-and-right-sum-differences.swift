/// https://leetcode.com/problems/left-and-right-sum-differences/
struct LeftAndRightSumDifferences {
  func leftRightDifference(_ nums: [Int]) -> [Int] {
    var lhsSum = [Int](repeating: 0, count: nums.count)
    var rhsSum = [Int](repeating: 0, count: nums.count)
    var result = [Int](repeating: 0, count: nums.count)
    for i in nums.indices.dropFirst() {
      lhsSum[i] = lhsSum[i-1]+nums[i-1]
    }
    for i in nums.indices.dropLast().reversed() {
      rhsSum[i] = rhsSum[i+1]+nums[i+1]
    }
    for i in nums.indices {
      result[i] = abs(lhsSum[i]-rhsSum[i])
    }
    return result
  }
}
