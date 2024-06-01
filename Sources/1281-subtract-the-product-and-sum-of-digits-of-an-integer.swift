/// https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
struct SubtractTheProductAndSumOfDigitsOfAnInteger {
  func subtractProductAndSum(_ n: Int) -> Int {
    var sum = 0
    var product = 1
    var remaining = n
    while remaining > 0 {
      let digit = remaining%10
      sum += digit
      product *= digit
      remaining /= 10
    }

    return product-sum
  }
}
