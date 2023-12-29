/// https://leetcode.com/problems/arithmetic-subarrays/
struct ArithmeticSubarrays {
  func checkArithmeticSubarrays(_ numbers: [Int], _ lowerbounds: [Int], _ upperbounds: [Int]) -> [Bool] {
    zip(lowerbounds, upperbounds).map { lowerbound, upperbound in
      let range = numbers[lowerbound ... upperbound]

      var min: Int = .max
      var max: Int = .min
      var numbers: Set<Int> = []
      for number in range {
        min = Swift.min(min, number)
        max = Swift.max(max, number)
        numbers.insert(number)
      }

      if numbers.count == 1 {
        return true
      }

      guard (max-min)%(range.count-1) == 0 else {
        return false
      }

      let distance = (max-min)/(range.count-1)
      let expectedNumbers = stride(from: min, to: max, by: distance)
      return expectedNumbers.allSatisfy(numbers.contains)
    }
  }
}
