import Foundation

/// https://leetcode.com/problems/valid-palindrome/
struct ValidPalindrome {
  func isPalindrome(_ s: String) -> Bool {
    var lhs = s.startIndex
    var rhs = s.index(before: s.endIndex)
    while lhs < rhs {
      if !s[lhs].isAlphanumeric {
        lhs = s.index(after: lhs)
      } else if !s[rhs].isAlphanumeric {
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

private extension Character {
  var isAlphanumeric: Bool {
    unicodeScalars.allSatisfy(CharacterSet.alphanumerics.contains)
  }
}
