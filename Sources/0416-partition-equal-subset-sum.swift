/// https://leetcode.com/problems/partition-equal-subset-sum/
struct PartitionEqualSubsetSum {
  func canPartition(_ nums: [Int]) -> Bool {
    let sum = nums.reduce(0, +)
    guard sum%2 == 0 else {
      return false
    }

    let target = sum/2
    var dp: Set<Int> = [0]
    for num in nums {
      var next: Set<Int> = []
      for sum in dp {
        guard sum != target else { return true }
        next.insert(sum+num)
      }

      dp.formUnion(next)
    }

    return dp.contains(target)
  }
}
