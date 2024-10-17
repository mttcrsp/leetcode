@testable
import Leetcode
import Testing

@Suite
struct LongestSubsequenceWithLimitedSumTests {
  @Test func testAnswerQueries1() {
    let input = ([4, 5, 2, 1], [3, 10, 21])
    let output = [2, 3, 4]
    #expect(LongestSubsequenceWithLimitedSum().answerQueries(input.0, input.1) == output)
  }

  @Test func testAnswerQueries2() {
    let input = ([2, 3, 4, 5], [1])
    let output = [0]
    #expect(LongestSubsequenceWithLimitedSum().answerQueries(input.0, input.1) == output)
  }
}
