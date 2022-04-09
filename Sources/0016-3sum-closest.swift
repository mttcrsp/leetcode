/// https://leetcode.com/problems/3sum-closest/
struct ThreeSumClosest {
  func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    let nums = nums.sorted()

    var result: Int?

    for i in 0 ..< nums.count - 2 {
      var lhs = i + 1
      var rhs = nums.count - 1

      while lhs < rhs {
        let sum = nums[i] + nums[lhs] + nums[rhs]

        if sum > target {
          rhs -= 1
        } else {
          lhs += 1
        }

        if result == nil {
          result = sum
        } else if let current = result, abs(sum - target) < abs(current - target) {
          result = sum
        }
      }
    }

    return result!
  }
}
