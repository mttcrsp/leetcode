/// https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
struct MinimumRemoveToMakeValidParentheses {
  func minRemoveToMakeValid(_ string: String) -> String {
    var stack: [(index: Int, character: Character)] = []
    for (i, character) in string.enumerated() {
      switch character {
      case "(":
        stack.append((i, character))
      case ")":
        if stack.last?.character == "(" {
          stack.removeLast()
        } else {
          stack.append((i, character))
        }
      default:
        continue
      }
    }

    var result = Array(string)
    for (index, _) in stack.reversed() {
      result.remove(at: index)
    }
    return String(result)
  }
}
