/// https://leetcode.com/problems/number-of-1-bits/
struct NumberOf1Bits {
  func hammingWeight(_ n: Int) -> Int {
    var n = n
    var weight = 0
    while n > 0 {
      if n & 1 == 1 {
        weight += 1
      }
      n = n >> 1
    }
    return weight
  }
}
