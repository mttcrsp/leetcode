/// https://leetcode.com/problems/roman-to-integer/
struct RomanToInteger {
  func romanToInt(_ s: String) -> Int {
    var current = (value: 0, remaining: s)

    while !current.remaining.isEmpty {
      let (newValue, newRemaining) = consume(current.remaining)
      current.value += newValue
      current.remaining = newRemaining
    }

    return current.value
  }

  private func consume(_ s: String) -> (Int, String) {
    if let value = RomanToInteger.mapping[String(s.prefix(3))] {
      return (value, String(s.dropFirst(3)))
    }

    if let value = RomanToInteger.mapping[String(s.prefix(2))] {
      return (value, String(s.dropFirst(2)))
    }

    if let value = RomanToInteger.mapping[String(s.prefix(1))] {
      return (value, String(s.dropFirst()))
    }

    preconditionFailure("Unable to determine mapping for string '\(s)'")
  }

  private static let mapping: [String: Int] = [
    "I": 1, "II": 2, "III": 3, "IV": 4, "V": 5,
    "IX": 9, "X": 10, "XX": 20, "XXX": 30, "XL": 40, "L": 50,
    "XC": 90, "C": 100, "CC": 200, "CCC": 300, "CD": 400, "D": 500,
    "CM": 900, "M": 1000, "MM": 2000, "MMM": 3000,
  ]
}
