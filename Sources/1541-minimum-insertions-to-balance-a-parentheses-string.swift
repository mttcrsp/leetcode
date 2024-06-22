/// https://leetcode.com/problems/minimum-insertions-to-balance-a-parentheses-string/
struct MinimumInsertionsToBalanceAParenthesesString {
  func minInsertions(_ s: String) -> Int {
    var insertions = 0
    var expectedClose = 0
    for character in s {
      switch character {
      case "(":
        if expectedClose%2 != 0 {
          expectedClose -= 1
          insertions += 1
        }
        expectedClose += 2
      case ")":
        expectedClose -= 1
        if expectedClose < 0 {
          expectedClose += 2
          insertions += 1
        }
      default: assertionFailure("Unexpected character '\(character)'")
      }
    }
    return insertions+expectedClose
  }
}
