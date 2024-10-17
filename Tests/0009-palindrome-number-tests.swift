@testable
import Leetcode
import Testing

@Suite
struct PalindromeNumberTests {
  @Test func testIsPalindrome1() {
    let input = 121
    let output = true
    #expect(PalindromeNumber().isPalindrome(input) == output)
  }

  @Test func testIsPalindrome2() {
    let input = -121
    let output = false
    #expect(PalindromeNumber().isPalindrome(input) == output)
  }

  @Test func testIsPalindrome3() {
    let input = 10
    let output = false
    #expect(PalindromeNumber().isPalindrome(input) == output)
  }
}
