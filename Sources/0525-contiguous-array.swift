/// https://leetcode.com/problems/contiguous-array/
struct ContiguousArray {
  func findMaxLength(_ nums: [Int]) -> Int {
    var maxLength = 0
    var balance = 0
    var balances: [Int: Int] = [0: -1]
    for (rhs, num) in nums.enumerated() {
      balance += num == 1 ? 1 : -1
      if let lhs = balances[balance] {
        maxLength = max(maxLength, rhs-lhs)
      } else {
        balances[balance] = rhs
      }
    }

    return maxLength
  }
}
