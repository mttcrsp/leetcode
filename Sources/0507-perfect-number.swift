/// https://leetcode.com/problems/perfect-number/
struct PerfectNumber {
  func checkPerfectNumber(_ number: Int) -> Bool {
    var sum = 0
    for i in 1 ... Int(Double(number).squareRoot()) where number % i == 0 {
      if (number / i) == i {
        sum += i
      } else {
        sum += i
        sum += number / i
      }
    }
    return sum == number * 2
  }
}
