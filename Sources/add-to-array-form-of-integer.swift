import Foundation

struct AddToArrayFormOfInteger {
  func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
    var isZero = true
    var carry = 0
    var remainder = K
    var indexA = A.count - 1
    var result: [Int] = []

    while indexA >= 0 || remainder > 0 {
      let digitK = remainder % 10
      let digitA = indexA >= 0 ? A[indexA] : 0
      let sum = digitA + digitK + carry
      result.append(sum % 10)
      isZero = isZero && sum == 0
      carry = sum / 10
      remainder /= 10
      indexA -= 1
    }

    if carry > 0 {
      result.append(carry)
    }

    if isZero {
      return [0]
    }

    return result.reversed()
  }
}
