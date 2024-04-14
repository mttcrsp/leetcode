/// https://leetcode.com/problems/find-triangular-sum-of-an-array/
struct FindTriangularSumOfAnArray {
  func triangularSum(_ nums: [Int]) -> Int {
    var nums = nums
    var i = nums.count-1
    while i > 0 {
      defer { i -= 1 }
      for j in 0 ..< i {
        nums[j] = (nums[j]+nums[j+1])%10
      }
    }

    return nums[0]
  }
}
