/// https://leetcode.com/problems/longest-consecutive-sequence/
struct LongestConsecutiveSequence {
  func longestConsecutive(_ nums: [Int]) -> Int {
    let numsSet = Set(nums)

    var result = 0
    for num in numsSet where !numsSet.contains(num-1) {
      var current = num
      var currentLength = 1
      while numsSet.contains(current+1) {
        current += 1
        currentLength += 1
      }

      result = max(result, currentLength)
    }

    return result
  }
}
