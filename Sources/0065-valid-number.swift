/// https://leetcode.com/problems/valid-number/
struct ValidNumber {
  func isNumber(_ s: String) -> Bool {
    func scanDigits(_ startIndex: String.Index) -> String.Index? {
      var index = startIndex, isValid = false
      while index < s.endIndex, s[index].isNumber {
        index = s.index(after: index); isValid = true
      }

      return isValid ? index : nil
    }

    func scanInteger(_ startIndex: String.Index) -> String.Index? {
      var index = startIndex
      if index < s.endIndex, s[index] == "+" || s[index] == "-" {
        index = s.index(after: index)
      }

      if let nextIndex = scanDigits(index) {
        return nextIndex
      } else {
        return nil
      }
    }

    func scanExponent(_ startIndex: String.Index) -> String.Index? {
      var index = startIndex

      guard index < s.endIndex, s[index] == "e" || s[index] == "E" else {
        return nil
      }
      index = s.index(after: index)

      if let nextIndex = scanInteger(index) {
        return nextIndex
      } else {
        return nil
      }
    }

    func scanDecimal(_ startIndex: String.Index) -> String.Index? {
      var index = startIndex, isValid = false
      if index < s.endIndex, s[index] == "+" || s[index] == "-" {
        index = s.index(after: index)
      }

      if let nextIndex = scanDigits(index) {
        index = nextIndex; isValid = true
      }

      guard index < s.endIndex, s[index] == "." else {
        return nil
      }
      index = s.index(after: index)

      if let nextIndex = scanDigits(index) {
        index = nextIndex; isValid = true
      }

      return isValid ? index : nil
    }

    var index = s.startIndex
    if let nextIndex = scanDecimal(index) {
      index = nextIndex
    } else if let nextIndex = scanInteger(index) {
      index = nextIndex
    } else {
      return false
    }

    if let nextIndex = scanExponent(index) {
      index = nextIndex
    }

    return index == s.endIndex
  }
}
