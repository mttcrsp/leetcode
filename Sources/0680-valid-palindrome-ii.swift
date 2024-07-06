/// https://leetcode.com/problems/valid-palindrome-ii/
struct ValidPalindromeIi {
  func validPalindrome(_ s: String) -> Bool {
    var lhs = s.startIndex
    var rhs = s.index(before: s.endIndex)
    while lhs < rhs {
      if s[lhs] == s[rhs] {
        lhs = s.index(after: lhs)
        rhs = s.index(before: rhs)
      } else {
        return
          validPalindromeStrict(s[s.index(after: lhs) ... rhs]) ||
          validPalindromeStrict(s[lhs ... s.index(before: rhs)])
      }
    }

    return true
  }

  private func validPalindromeStrict(_ s: Substring) -> Bool {
    var lhs = s.startIndex
    var rhs = s.index(before: s.endIndex)
    while lhs < rhs {
      guard s[lhs] == s[rhs] else { return false }
      lhs = s.index(after: lhs)
      rhs = s.index(before: rhs)
    }

    return true
  }
}
