struct SubtractTheProductAndSumOfDigitsOfAnInteger {
  func subtractProductAndSum(_ n: Int) -> Int {
    var number = n
    var product = 1
    var sum = 0

    while number > 0 {
      let digit = number % 10
      product *= digit
      sum += digit
      number /= 10
    }

    return product - sum
  }
}
