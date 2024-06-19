/// https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/
struct MinimumAddToMakeParenthesesValid {
  func minAddToMakeValid(_ s: String) -> Int {
    var balance = 0, result = 0
    for character in s {
      if character == "(" {
        balance += 1
      } else if balance > 0 {
        balance -= 1
      } else {
        result += 1
      }
    }

    return result+balance
  }
}
