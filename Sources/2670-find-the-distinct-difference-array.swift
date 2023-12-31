/// https://leetcode.com/problems/find-the-distinct-difference-array/
struct FindTheDistinctDifferenceArray {
  func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
    var prefixDistinct: Set<Int> = []
    var suffixDistinct: Set<Int> = []
    var prefixCounts: [Int] = []
    var suffixCounts: [Int] = []
    for i in nums.indices {
      prefixDistinct.insert(nums[i])
      prefixCounts.append(prefixDistinct.count)
      suffixDistinct.insert(nums[nums.count-i-1])
      suffixCounts.append(suffixDistinct.count)
    }

    let totalDistinct = prefixDistinct.count
    var distinceDifferences: [Int] = []
    for i in nums.indices.dropLast() {
      let distinctDifference = prefixCounts[i]-suffixCounts.reversed()[i+1]
      distinceDifferences.append(distinctDifference)
    }
    distinceDifferences.append(totalDistinct)

    return distinceDifferences
  }
}
