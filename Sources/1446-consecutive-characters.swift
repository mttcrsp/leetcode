/// https://leetcode.com/problems/consecutive-characters/
struct ConsecutiveCharacters {
  func maxPower(_ string: String) -> Int {
    guard !string.isEmpty else { return 0 }

    var max = 1
    var current = 1 {
      didSet { max = Swift.max(max, current) }
    }

    for (lhs, rhs) in zip(string, string.dropFirst()) {
      if lhs == rhs {
        current += 1
      } else {
        current = 1
      }
    }

    return max
  }
}
