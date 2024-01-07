import HeapModule

/// https://leetcode.com/problems/maximum-subsequence-score/
struct MaximumSubsequenceScore {
  func maxScore(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
    let pairs = zip(nums1, nums2)
      .sorted { $0.1 > $1.1 }

    var heap: Heap<Int> = []
    var sum = 0
    var maxScore = 0
    for (num1, num2) in pairs {
      sum += num1
      heap.insert(num1)

      if heap.count > k {
        sum -= heap.removeMin()
      }
      if heap.count == k {
        maxScore = max(maxScore, sum*num2)
      }
    }

    return maxScore
  }
}
