/// https://leetcode.com/problems/powx-n/
struct PowxN {
  func myPow(_ x: Double, _ n: Int) -> Double {
    guard n != 0 else { return 1 }
    guard x != 1 else { return 1 }

    let base = n > 0 ? x : 1/x
    var power = Double(base)
    var result: Double = 1
    var n = abs(n)
    while n > 0 {
      if n & 1 == 1 {
        result *= power
      }

      power *= power
      n = n >> 1
    }

    return result
  }
}
