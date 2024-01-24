/// https://leetcode.com/problems/backspace-string-compare/
struct BackspaceStringCompare {
  func backspaceCompare(_ s: String, _ t: String) -> Bool {
    func consume(_ string: String) -> [Character] {
      var stack: [Character] = []
      for character in string {
        if character == "#" {
          _ = stack.popLast()
        } else {
          stack.append(character)
        }
      }

      return stack
    }

    return consume(s) == consume(t)
  }
}
