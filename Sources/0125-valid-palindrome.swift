/// https://leetcode.com/problems/valid-palindrome/
struct ValidPalindrome {
  func isPalindrome(_ s: String) -> Bool {
    var lhs = s.startIndex
    var rhs = s.index(before: s.endIndex)
    while lhs < rhs {
      if !(s[lhs].isLetter || s[lhs].isNumber) {
        lhs = s.index(after: lhs)
      } else if !(s[rhs].isLetter || s[rhs].isNumber) {
        rhs = s.index(before: rhs)
      } else if s[lhs].lowercased() != s[rhs].lowercased() {
        return false
      } else {
        lhs = s.index(after: lhs)
        rhs = s.index(before: rhs)
      }
    }
    return true
  }
}
