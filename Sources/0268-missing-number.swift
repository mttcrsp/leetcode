/// https://leetcode.com/problems/missing-number/
struct MissingNumber {
  func missingNumber(_ numbers: [Int]) -> Int {
    var actual = 0
    var expect = numbers.count
    for (i, number) in numbers.enumerated() {
      actual ^= number
      expect ^= i
    }
    return actual ^ expect
  }
}
