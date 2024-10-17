@testable
import Leetcode
import Testing

@Suite
struct LongestContinuousIncreasingSubsequenceTests {
  @Test func testFindLengthOfLCIS1() {
    let input = [1, 3, 5, 4, 7]
    let output = 3
    #expect(LongestContinuousIncreasingSubsequence().findLengthOfLCIS(input) == output)
  }

  @Test func testFindLengthOfLCIS2() {
    let input = [2, 2, 2, 2, 2]
    let output = 1
    #expect(LongestContinuousIncreasingSubsequence().findLengthOfLCIS(input) == output)
  }

  @Test func testFindLengthOfLCIS3() {
    let input: [Int] = []
    let output = 0
    #expect(LongestContinuousIncreasingSubsequence().findLengthOfLCIS(input) == output)
  }

  @Test func testFindLengthOfLCIS4() {
    let input = [9, 8, 7, 6, 5]
    let output = 1
    #expect(LongestContinuousIncreasingSubsequence().findLengthOfLCIS(input) == output)
  }

  @Test func testFindLengthOfLCIS5() {
    let input = [9, 1, 2, 0, 3, 5, 6, 10, 1]
    let output = 5
    #expect(LongestContinuousIncreasingSubsequence().findLengthOfLCIS(input) == output)
  }
}
