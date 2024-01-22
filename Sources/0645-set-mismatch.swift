/// https://leetcode.com/problems/set-mismatch/
struct SetMismatch {
  func findErrorNums(_ nums: [Int]) -> [Int] {
    var duplicate: Int?
    var remaining = Set(1 ... nums.count)
    for num in nums {
      if remaining.remove(num) == nil {
        duplicate = num
      }
    }

    return [duplicate!, remaining.first!]
  }
}
