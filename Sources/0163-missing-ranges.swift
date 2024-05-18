/// https://leetcode.com/problems/missing-ranges/
class MissingRanges {
  func findMissingRanges(_ nums: [Int], _ lower: Int, _ upper: Int) -> [[Int]] {
    let nums = [lower-1]+nums+[upper+1]

    var result: [[Int]] = []
    for i in nums.indices.dropFirst() {
      if nums[i]-nums[i-1] > 1 {
        result.append([nums[i-1]+1, nums[i]-1])
      }
    }

    return result
  }
}
