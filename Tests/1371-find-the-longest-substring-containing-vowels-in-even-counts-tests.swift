@testable
import Leetcode
import Testing

@Suite
struct FindTheLongestSubstringContainingVowelsInEvenCountsTests {
  @Test func testFindTheLongestSubstring1() {
    let input = "eleetminicoworoep"
    let output = 13
    #expect(FindTheLongestSubstringContainingVowelsInEvenCounts().findTheLongestSubstring(input) == output)
  }

  @Test func testFindTheLongestSubstring2() {
    let input = "leetcodeisgreat"
    let output = 5
    #expect(FindTheLongestSubstringContainingVowelsInEvenCounts().findTheLongestSubstring(input) == output)
  }

  @Test func testFindTheLongestSubstring3() {
    let input = "bcbcbc"
    let output = 6
    #expect(FindTheLongestSubstringContainingVowelsInEvenCounts().findTheLongestSubstring(input) == output)
  }
}
