/// https://leetcode.com/problems/valid-number/
struct ValidNumber {
  func isNumber(_ s: String) -> Bool {
    var index = s.startIndex
    if let nextIndex = parseDecimal(s, index) {
      index = nextIndex
    } else if let nextIndex = parseInteger(s, index) {
      index = nextIndex
    } else {
      return false
    }

    guard index != s.endIndex else {
      return true
    }

    guard s[index] == "e" || s[index] == "E" else {
      return false
    }

    index = s.index(after: index)
    return parseInteger(s, index) == s.endIndex
  }

  func parseDigits(_ s: String, _ startIndex: String.Index) -> String.Index? {
    var index = startIndex
    while index < s.endIndex, s[index].isNumber {
      index = s.index(after: index)
    }

    // ensure that you have parsed at least a digit
    return index == startIndex ? nil : index
  }

  func parseDecimal(_ s: String, _ startIndex: String.Index) -> String.Index? {
    var index = startIndex
    if index < s.endIndex, s[index] == "+" || s[index] == "-" {
      index = s.index(after: index)
    }

    if index < s.endIndex, s[index] == "." {
      index = s.index(after: index)
      return parseDigits(s, index)
    }

    if let nextIndex = parseDigits(s, index) {
      index = nextIndex
      if index < s.endIndex, s[index] == "." {
        index = s.index(after: index)
        if let nextIndex = parseDigits(s, index) {
          return nextIndex
        } else {
          return index
        }
      }
    }

    return nil
  }

  func parseInteger(_ s: String, _ startIndex: String.Index) -> String.Index? {
    var index = startIndex
    if index < s.endIndex, s[index] == "+" || s[index] == "-" {
      index = s.index(after: index)
    }

    return parseDigits(s, index)
  }
}
