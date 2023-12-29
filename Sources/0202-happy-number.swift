/// https://leetcode.com/problems/happy-number/
struct HappyNumber {
  func isHappy(_ n: Int) -> Bool {
    guard n >= 0 else { return false }

    var current = n
    var solved: Set<Int> = []

    while true {
      let isHappy = current == 1
      if isHappy {
        return true
      }

      let (isKnown, _) = solved.insert(current)
      if !isKnown {
        return false
      }

      var remainder = current
      var sumOfSquaredDigits = 0

      while remainder >= 10 {
        let digit = remainder%10
        sumOfSquaredDigits += digit*digit
        remainder /= 10
      }

      sumOfSquaredDigits += remainder*remainder
      current = sumOfSquaredDigits
    }
  }
}
