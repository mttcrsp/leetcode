struct ArithmeticSubarrays {
  func checkArithmeticSubarrays(_ numbers: [Int], _ lowerbounds: [Int], _ upperbounds: [Int]) -> [Bool] {
    var result: [Bool] = []
    for (lowerbound, upperbound) in zip(lowerbounds, upperbounds) {
      if upperbound - lowerbound < 2 {
        result.append(true)
        continue
      }

      let sortedRange = numbers[lowerbound ... upperbound].sorted()
      let consecutives = zip(sortedRange, sortedRange.dropFirst())

      var distance: Int?, valid = true
      loop: for (lhs, rhs) in consecutives {
        switch distance {
        case nil:
          distance = rhs - lhs
        case let .some(distance) where distance == rhs - lhs:
          continue
        case .some:
          valid = false
          break loop
        }
      }
      result.append(valid)
    }

    return result
  }
}
