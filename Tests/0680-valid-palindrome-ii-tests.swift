@testable
import Leetcode
import Testing

@Suite
struct ValidPalindromeIiTests {
  @Test func testValidPalindrome1() {
    let input = "aba"
    let output = true
    #expect(ValidPalindromeIi().validPalindrome(input) == output)
  }

  @Test func testValidPalindrome2() {
    let input = "abca"
    let output = true
    #expect(ValidPalindromeIi().validPalindrome(input) == output)
  }

  @Test func testValidPalindrome3() {
    let input = "abc"
    let output = false
    #expect(ValidPalindromeIi().validPalindrome(input) == output)
  }
}
