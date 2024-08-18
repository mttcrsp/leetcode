/// https://leetcode.com/problems/two-sum/
struct TwoSum {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indices: [Int: Int] = [:]
    for (index, num) in nums.enumerated() {
      if let complementIndex = indices[target-num] {
        return [complementIndex, index]
      } else {
        indices[num] = index
      }
    }
    preconditionFailure("Complement not found")
  }
}
