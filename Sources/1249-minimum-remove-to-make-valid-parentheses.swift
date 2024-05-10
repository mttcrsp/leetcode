/// https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
struct MinimumRemoveToMakeValidParentheses {
  func minRemoveToMakeValid(_ s: String) -> String {
    var open = 0, close = 0
    var forward = ""
    for character in s {
      switch (character, open > close) {
      case ("(", _): forward.append(character); open += 1
      case (")", true): forward.append(character); close += 1
      case (")", false): continue
      case (_, _): forward.append(character)
      }
    }

    guard open != close else {
      return forward
    }

    open = 0; close = 0
    var backward = ""
    for character in forward.reversed() {
      switch (character, close > open) {
      case (")", _): backward.append(character); close += 1
      case ("(", true): backward.append(character); open += 1
      case ("(", false): continue
      case (_, _): backward.append(character)
      }
    }

    return String(backward.reversed())
  }
}
