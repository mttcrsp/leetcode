/// https://leetcode.com/problems/product-of-array-except-self/
struct ProductOfArrayExceptSelf {
  func productExceptSelf(_ numbers: [Int]) -> [Int] {
    var foundZero = false
    var product = 1
    for number in numbers {
      switch (number, foundZero) {
      case (0, false):
        foundZero = true
      case (0, true):
        return [Int](repeating: 0, count: numbers.count)
      case (_, _):
        product *= number
      }
    }

    if foundZero {
      return numbers.map { number in
        number == 0 ? product : 0
      }
    }

    return numbers.map { number in
      product / number
    }
  }
}
