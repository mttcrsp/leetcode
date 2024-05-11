/// https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/
struct MinimumAddToMakeParenthesesValid {
  func minAddToMakeValid(_ s: String) -> Int {
    var result = 0
    var unmatched = 0
    for character in s {
      if character == "(" {
        unmatched += 1
      } else if unmatched > 0 {
        unmatched -= 1
      } else {
        result += 1
      }
    }

    return result+unmatched
  }
}
