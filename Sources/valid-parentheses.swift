struct ValidParentheses {
  func isValid(_ string: String) -> Bool {
    var unmatched: [Character] = []

    for character in string {
      switch (character, unmatched.last) {
      case ("(", _), ("[", _), ("{", _):
        unmatched.append(character)
      case (")", "("), ("]", "["), ("}", "{"):
        unmatched.removeLast()
      case (")", _), ("]", _), ("}", _):
        return false
      default:
        preconditionFailure("Unexpected character found \(character)")
      }
    }

    return unmatched.isEmpty
  }
}
