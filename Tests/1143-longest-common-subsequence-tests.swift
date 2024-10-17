@testable
import Leetcode
import Testing

@Suite
struct LongestCommonSubsequenceTests {
  @Test func testLongestcommonsubsequence1() {
    let input = ("abcde", "ace")
    let output = 3
    #expect(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1) == output)
  }

  @Test func testLongestcommonsubsequence2() {
    let input = ("abc", "abc")
    let output = 3
    #expect(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1) == output)
  }

  @Test func testLongestcommonsubsequence3() {
    let input = ("abc", "def")
    let output = 0
    #expect(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1) == output)
  }

  @Test func testLongestcommonsubsequence4() {
    let input = ("fsadghjfdgahjsfdasgjhfdgajhsgfjhdasfghjsd", "adshgjfjgkhafdghjksfahgjdsfweyurtyadzfhjg")
    let output = 21
    #expect(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1) == output)
  }
}
