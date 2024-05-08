/// https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
struct MinimumRemoveToMakeValidParentheses {
  func minRemoveToMakeValid(_ s: String) -> String {
    var result = ""
    var unmatched: [String.Index] = []
    var index = s.startIndex
    while index < s.endIndex {
      defer { index = s.index(after: index) }

      let character = s[index]
      switch character {
      case "(":
        unmatched.append(result.endIndex)
        result.append(character)
      case ")":
        if !unmatched.isEmpty {
          unmatched.removeLast()
          result.append(character)
        }
      case _:
        result.append(character)
      }
    }

    for index in unmatched.reversed() {
      result.remove(at: index)
    }

    return result
  }
}
