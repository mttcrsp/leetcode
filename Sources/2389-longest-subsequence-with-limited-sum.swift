/// https://leetcode.com/problems/longest-subsequence-with-limited-sum/
struct LongestSubsequenceWithLimitedSum {
  func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
    var prefixSum = [Int](repeating: 0, count: nums.count)
    for (i, num) in nums.sorted().enumerated() {
      if i == 0 {
        prefixSum[i] = num
      } else {
        prefixSum[i] = prefixSum[i-1]+num
      }
    }

    var result: [Int] = []
    for query in queries {
      var lhs = 0
      var rhs = prefixSum.count-1
      var answer = -1
      while lhs <= rhs {
        let mid = (lhs+rhs)/2
        if prefixSum[mid] <= query {
          answer = mid
          lhs = mid+1
        } else {
          rhs = mid-1
        }
      }
      result.append(answer+1)
    }

    return result
  }
}
