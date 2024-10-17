@testable
import Leetcode
import Testing

@Suite
struct WordLadderTests {
  @Test func testLadderLength1() {
    let input = ("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"])
    let output = 5
    #expect(WordLadder().ladderLength(input.0, input.1, input.2) == output)
  }

  @Test func testLadderLength2() {
    let input = ("hit", "cog", ["hot", "dot", "dog", "lot", "log"])
    let output = 0
    #expect(WordLadder().ladderLength(input.0, input.1, input.2) == output)
  }
}
