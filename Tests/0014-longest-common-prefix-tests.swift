@testable
import Leetcode
import Testing

@Suite
struct LongestCommonPrefixTests {
  @Test func testLongestCommonPrefix1() {
    let input = ["flower", "flow", "flight"]
    let output = "fl"
    #expect(LongestCommonPrefix().longestCommonPrefix(input) == output)
  }

  @Test func testLongestCommonPrefix2() {
    let input = ["dog", "racecar", "car"]
    let output = ""
    #expect(LongestCommonPrefix().longestCommonPrefix(input) == output)
  }
}
