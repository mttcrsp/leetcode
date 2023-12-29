/// https://leetcode.com/problems/fibonacci-number/
struct FibonacciNumber {
  func fib(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }

    var iteration = 2
    var minus2 = 0
    var minus1 = 1

    while iteration <= n {
      let current = minus1+minus2
      minus2 = minus1
      minus1 = current
      iteration += 1
    }

    return minus1
  }
}
