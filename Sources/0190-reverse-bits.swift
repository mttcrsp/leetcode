/// https://leetcode.com/problems/reverse-bits/
struct ReverseBits {
  func reverseBits(_ n: Int) -> Int {
    var reversed = 0
    for i in 0 ... 31 {
      reversed = reversed << 1
      reversed |= n & (1 << i) > 0 ? 1 : 0
    }
    return reversed
  }
}
