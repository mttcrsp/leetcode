/// https://leetcode.com/problems/valid-parentheses/
struct ValidParentheses {
  func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    for character in s {
      switch (character, stack.last) {
      case ("(", _), ("[", _), ("{", _):
        stack.append(character)
      case (")", "("), ("]", "["), ("}", "{"):
        stack.removeLast()
      case _:
        return false
      }
    }

    return stack.isEmpty
  }
}
