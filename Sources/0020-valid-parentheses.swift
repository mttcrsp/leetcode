/// https://leetcode.com/problems/valid-parentheses/
struct ValidParentheses {
  func isValid(_ s: String) -> Bool {
    let opening: Set<Character> = ["(", "[", "{"]
    let closing: [Character: Character] = [
      ")": "(", "]": "[", "}": "{",
    ]
    
    var stack: [Character] = []
    for character in s {
      if opening.contains(character) {
        stack.append(character)
      } else if let opening = closing[character] {
        if stack.last == opening {
          stack.removeLast()
        } else {
          return false
        }
      } else {
        preconditionFailure("Unexpected character '\(character)'")
      }
    }

    return stack.isEmpty
  }
}
