/// https://leetcode.com/problems/powx-n/
struct PowxN {
  func myPow(_ x: Double, _ n: Int) -> Double {
    guard x != 1 else { return 1 }

    var x = n < 0 ? 1/x : x
    var n = abs(n)
    var pow = 1.0
    while n != 0 {
      if n & 1 == 1 {
        pow *= x
      }
      x *= x
      n >>= 1
    }

    return pow
  }
}
