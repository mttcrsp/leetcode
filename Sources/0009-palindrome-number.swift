/// https://leetcode.com/problems/palindrome-number/
struct PalindromeNumber {
  func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    if x != 0 && x%10 == 0 { return false }

    var reversed = 0
    var original = x
    while reversed < original {
      reversed *= 10
      reversed += original%10
      original /= 10
    }

    return original == reversed || original == reversed/10
  }
}
