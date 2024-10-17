/// https://leetcode.com/problems/roman-to-integer/
struct RomanToInteger {
  func romanToInt(_ s: String) -> Int {
    let romanToInteger: [Character: Int] = [
      "I": 1, "V": 5, "X": 10, "L": 50,
      "C": 100, "D": 500, "M": 1000,
    ]

    var result = 0
    for (curr, next) in zip(s, s.dropFirst()) {
      let currValue = romanToInteger[curr]!
      let nextValue = romanToInteger[next]!
      if currValue < nextValue {
        result -= currValue
      } else {
        result += currValue
      }
    }

    if let last = s.last {
      result += romanToInteger[last]!
    }

    return result
  }
}
