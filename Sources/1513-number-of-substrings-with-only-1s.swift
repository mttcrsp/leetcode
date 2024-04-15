/// https://leetcode.com/problems/number-of-substrings-with-only-1s/
struct NumberOfSubstringsWithOnly1S {
  func numSub(_ s: String) -> Int {
    var current = 0
    var result = 0
    for character in s {
      switch character {
      case "1":
        current += 1
        result += current
        result %= 1_000_000_007
      case "0":
        current = 0
      case _:
        preconditionFailure("unexpected character '\(character)' found")
      }
    }

    return result
  }
}
