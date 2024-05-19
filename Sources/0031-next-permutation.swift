/// https://leetcode.com/problems/next-permutation/
struct NextPermutation {
  func nextPermutation(_ nums: inout [Int]) {
    var i = nums.count-2
    while i >= 0, nums[i] >= nums[i+1] {
      i -= 1
    }

    if i >= 0 {
      var j = nums.count-1
      while nums[j] <= nums[i] {
        j -= 1
      }
      nums.swapAt(i, j)
    }

    var lhs = i+1
    var rhs = nums.count-1
    while lhs < rhs {
      nums.swapAt(lhs, rhs)
      lhs += 1
      rhs -= 1
    }
  }
}
