/// https://leetcode.com/problems/reverse-bits/
struct ReverseBits {
  func reverseBits(_ n: Int) -> Int {
    var reversed = 0
    for i in 0 ..< 32 {
      if n & (1 << i) > 0 {
        reversed |= 1 << (31 - i)
      }
    }
    return reversed
  }
}
