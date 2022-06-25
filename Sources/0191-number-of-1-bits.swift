/// https://leetcode.com/problems/number-of-1-bits/
struct NumberOf1Bits {
  func hammingWeight(_ n: Int) -> Int {
    var n = n
    var weight = 0
    while n > 0 {
      weight += n & 1
      n = n >> 1
    }
    return weight
  }
}
