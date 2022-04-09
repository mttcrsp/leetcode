/// https://leetcode.com/problems/valid-palindrome/
import Foundation

struct ValidPalindrome {
  func isPalindrome(_ s: String) -> Bool {
    let validCharacters = CharacterSet.alphanumerics

    var lowerbound = s.startIndex
    var upperbound = s.index(before: s.endIndex)

    while lowerbound < upperbound {
      guard validCharacters.contains(s[lowerbound].unicodeScalars.first!) else {
        lowerbound = s.index(after: lowerbound)
        continue
      }

      guard validCharacters.contains(s[upperbound].unicodeScalars.first!) else {
        upperbound = s.index(before: upperbound)
        continue
      }

      guard s[lowerbound].lowercased() == s[upperbound].lowercased() else {
        return false
      }

      lowerbound = s.index(after: lowerbound)
      upperbound = s.index(before: upperbound)
    }

    return true
  }
}
