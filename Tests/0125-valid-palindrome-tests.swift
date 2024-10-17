@testable
import Leetcode
import Testing

@Suite
struct ValidPalindromeTests {
  @Test func testIsPalindrome1() {
    let input = "A man, a plan, a canal: Panama"
    let output = true
    #expect(ValidPalindrome().isPalindrome(input) == output)
  }

  @Test func testIsPalindrome2() {
    let input = "race a car"
    let output = false
    #expect(ValidPalindrome().isPalindrome(input) == output)
  }

  @Test func testIsPalindrome3() {
    let input = "0A"
    let output = false
    #expect(ValidPalindrome().isPalindrome(input) == output)
  }
}
