@testable
import Leetcode
import Testing

@Suite
struct LongestIncreasingSubsequenceTests {
  @Test func testLengthoflis1() {
    let input = [10, 9, 2, 5, 3, 7, 101, 18]
    let output = 4
    #expect(LongestIncreasingSubsequence().lengthOfLIS(input) == output)
  }

  @Test func testLengthoflis2() {
    let input = [0, 1, 0, 3, 2, 3]
    let output = 4
    #expect(LongestIncreasingSubsequence().lengthOfLIS(input) == output)
  }

  @Test func testLengthoflis3() {
    let input = [7, 7, 7, 7, 7, 7, 7]
    let output = 1
    #expect(LongestIncreasingSubsequence().lengthOfLIS(input) == output)
  }
}
