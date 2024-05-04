/// https://leetcode.com/problems/3sum/
struct ThreeSum {
  func threeSum(_ nums: [Int]) -> [[Int]] {
    let nums = nums.sorted()

    var result: [[Int]] = []
    for i in nums.indices {
      if nums[i] > 0 {
        break
      } else if i > 0, nums[i] == nums[i-1] {
        continue
      } else {
        var lhs = i+1
        var rhs = nums.count-1
        while lhs < rhs {
          let sum = nums[i]+nums[lhs]+nums[rhs]
          if sum < 0 {
            lhs += 1
          } else if sum > 0 {
            rhs -= 1
          } else {
            result.append([nums[i], nums[lhs], nums[rhs]])
            lhs += 1
            rhs -= 1
            while lhs < rhs, nums[lhs] == nums[lhs-1] {
              lhs += 1
            }
          }
        }
      }
    }

    return result
  }
}
