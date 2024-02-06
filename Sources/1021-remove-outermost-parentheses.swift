/// https://leetcode.com/problems/remove-outermost-parentheses/
struct RemoveOutermostParentheses {
  func removeOuterParentheses(_ s: String) -> String {
    let s = Array(s)

    var result = ""
    var previousIndex = 0
    var count = 0
    for (index, character) in s.enumerated() {
      switch character {
      case "(": count += 1
      case ")": count -= 1
      default: preconditionFailure("unexpected character '\(character)' at index \(index)")
      }

      guard count == 0 else { continue }
      let lowerBound = previousIndex+1
      let upperBound = index
      result += String(s[lowerBound ..< upperBound])
      previousIndex = index+1
    }

    return result
  }
}
