/// https://leetcode.com/problems/valid-palindrome-ii/
struct ValidPalindromeIi {
  func validPalindrome(_ string: String) -> Bool {
    var lhs = string.startIndex
    var rhs = string.index(before: string.endIndex)

    while lhs < rhs, string[lhs] == string[rhs] {
      lhs = string.index(after: lhs)
      rhs = string.index(before: rhs)
    }

    if lhs >= rhs {
      return true
    }

    let string1 = string[lhs ..< rhs]
    let string2 = string[string.index(after: lhs) ..< string.index(after: rhs)]
    return validPalindromeStrict(string1) || validPalindromeStrict(string2)
  }

  private func validPalindromeStrict(_ string: Substring) -> Bool {
    var lhs = string.startIndex
    var rhs = string.index(before: string.endIndex)

    while lhs < rhs, string[lhs] == string[rhs] {
      lhs = string.index(after: lhs)
      rhs = string.index(before: rhs)
    }

    return lhs >= rhs
  }
}
