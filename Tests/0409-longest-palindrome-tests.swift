@testable
import Leetcode
import Testing

@Suite
struct LongestPalindromeTests {
  @Test func testLongestPalindrome1() {
    let input = "abccccdd"
    let output = 7
    #expect(LongestPalindrome().longestPalindrome(input) == output)
  }

  @Test func testLongestPalindrome2() {
    let input = "aabccccdd"
    let output = 9
    #expect(LongestPalindrome().longestPalindrome(input) == output)
  }

  @Test func testLongestPalindrome3() {
    let input = ""
    let output = 0
    #expect(LongestPalindrome().longestPalindrome(input) == output)
  }
}
