/// https://leetcode.com/problems/max-number-of-k-sum-pairs/
struct MaxNumberOfKSumPairs {
  func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var occurrences: [Int: Int] = [:]
    for num in nums {
      occurrences[num, default: 0] += 1
    }

    var operations = 0
    for (lhs, lhsCount) in occurrences {
      if let rhsCount = occurrences[k-lhs] {
        operations += min(lhsCount, rhsCount)
      }
    }

    return operations/2
  }
}
