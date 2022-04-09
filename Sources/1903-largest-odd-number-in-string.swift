/// https://leetcode.com/problems/largest-odd-number-in-string/
struct LargestOddNumberInString {
  func largestOddNumber(_ num: String) -> String {
    for i in num.indices.reversed() {
      let character = num[i ... i]

      guard let digit = Int(character) else {
        preconditionFailure("Invalid character '\(character)' found")
      }

      if digit % 2 == 1 {
        return String(num[num.startIndex ... i])
      }
    }

    return ""
  }
}
