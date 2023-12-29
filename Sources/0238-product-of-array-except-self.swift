/// https://leetcode.com/problems/product-of-array-except-self/
struct ProductOfArrayExceptSelf {
  func productExceptSelf(_ numbers: [Int]) -> [Int] {
    var result = [Int](repeating: 1, count: numbers.count)

    var prefix = 1
    for i in 0 ..< numbers.count {
      result[i] = prefix
      prefix *= numbers[i]
    }

    var postfix = 1
    for i in stride(from: numbers.count-1, to: -1, by: -1) {
      result[i] *= postfix
      postfix *= numbers[i]
    }

    return result
  }
}
