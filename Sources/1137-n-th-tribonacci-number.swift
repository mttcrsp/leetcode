/// https://leetcode.com/problems/n-th-tribonacci-number/
struct NThTribonacciNumber {
  func tribonacci(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    if n == 2 { return 1 }

    var prev1 = 0
    var prev2 = 1
    var prev3 = 1
    for _ in 3 ... n {
      let new = prev3+prev2+prev1
      prev1 = prev2
      prev2 = prev3
      prev3 = new
    }

    return prev3
  }
}
