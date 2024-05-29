/// https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/
struct MinimumAddToMakeParenthesesValid {
  func minAddToMakeValid(_ s: String) -> Int {
    var unmatchedClose = 0
    var unmatchedOpen = 0
    for character in s {
      if character == "(" {
        unmatchedOpen += 1
      } else if unmatchedOpen > 0 {
        unmatchedOpen -= 1
      } else {
        unmatchedClose += 1
      }
    }

    return unmatchedClose+unmatchedOpen
  }
}
