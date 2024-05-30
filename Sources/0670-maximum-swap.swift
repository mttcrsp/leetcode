/// https://leetcode.com/problems/maximum-swap/
struct MaximumSwap {
  func maximumSwap(_ num: Int) -> Int {
    var remaining = num
    var digits: [Int] = []
    while remaining > 0 {
      digits.append(remaining%10)
      remaining /= 10
    }

    digits.reverse()

    var lastIndex: [Int: Int] = [:]
    for (index, digit) in digits.enumerated() {
      lastIndex[digit] = index
    }

    for (index, digit) in digits.enumerated() {
      for otherDigit in stride(from: 9, through: digit+1, by: -1) {
        if let otherIndex = lastIndex[otherDigit], otherIndex > index {
          digits.swapAt(index, otherIndex)

          var result = 0
          for digit in digits {
            result *= 10
            result += digit
          }

          return result
        }
      }
    }

    return num
  }
}
