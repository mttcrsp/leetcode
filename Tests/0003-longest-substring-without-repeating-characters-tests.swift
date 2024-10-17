@testable
import Leetcode
import Testing

@Suite
struct LongestSubstringWithoutRepeatingCharactersTests {
  @Test func testLengthOfLongestSubstring1() {
    let input = "abcabcbb"
    let output = 3
    #expect(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input) == output)
  }

  @Test func testLengthOfLongestSubstring2() {
    let input = "bbbbb"
    let output = 1
    #expect(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input) == output)
  }

  @Test func testLengthOfLongestSubstring3() {
    let input = "pwwkew"
    let output = 3
    #expect(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input) == output)
  }

  @Test func testLengthOfLongestSubstring4() {
    let input = ""
    let output = 0
    #expect(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input) == output)
  }

  @Test func testLengthOfLongestSubstring5() {
    let input = "dvdf"
    let output = 3
    #expect(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input) == output)
  }

  @Test func testLengthOfLongestSubstring6() {
    let input = " "
    let output = 1
    #expect(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input) == output)
  }
}
