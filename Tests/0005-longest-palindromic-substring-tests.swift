@testable
import Leetcode
import Testing

@Suite
struct LongestPalindromicSubstringTests {
  @Test func testLongestPalindrome1() {
    let input = "babad"
    let output = "bab"
    #expect(LongestPalindromicSubstring().longestPalindrome(input) == output)
  }

  @Test func testLongestPalindrome2() {
    let input = "cbbd"
    let output = "bb"
    #expect(LongestPalindromicSubstring().longestPalindrome(input) == output)
  }
}
