@testable
import Leetcode
import Testing

@Suite
struct MaximumSubsequenceScoreTests {
  @Test func testMaxscore1() {
    let input = ([1, 3, 3, 2], [2, 1, 3, 4], 3)
    let output = 12
    #expect(MaximumSubsequenceScore().maxScore(input.0, input.1, input.2) == output)
  }

  @Test func testMaxscore2() {
    let input = ([4, 2, 3, 1, 1], [7, 5, 10, 9, 6], 1)
    let output = 30
    #expect(MaximumSubsequenceScore().maxScore(input.0, input.1, input.2) == output)
  }
}
