@testable
import Leetcode
import Testing

@Suite
struct WordSearchTests {
  @Test func testExist1() {
    let input = ([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]] as [[Character]], "ABCCED")
    let output = true
    #expect(WordSearch().exist(input.0, input.1) == output)
  }

  @Test func testExist2() {
    let input = ([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]] as [[Character]], "SEE")
    let output = true
    #expect(WordSearch().exist(input.0, input.1) == output)
  }

  @Test func testExist3() {
    let input = ([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]] as [[Character]], "ABCB")
    let output = false
    #expect(WordSearch().exist(input.0, input.1) == output)
  }
}
