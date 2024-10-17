@testable
import Leetcode
import Testing

@Suite
struct ValidPalindromeIiiTests {
  @Test func testIsValidPalindrome1() {
    let input = ("abcdeca", 2)
    let output = true
    #expect(ValidPalindromeIii().isValidPalindrome(input.0, input.1) == output)
  }

  @Test func testIsValidPalindrome2() {
    let input = ("abbababa", 1)
    let output = true
    #expect(ValidPalindromeIii().isValidPalindrome(input.0, input.1) == output)
  }
}
