@testable
import Leetcode
import Testing

@Suite
struct WordBreakTests {
  @Test func testWordBreak1() {
    let input = ("leetcode", ["leet", "code"])
    let output = true
    #expect(WordBreak().wordBreak(input.0, input.1) == output)
  }

  @Test func testWordBreak2() {
    let input = ("applepenapple", ["apple", "pen"])
    let output = true
    #expect(WordBreak().wordBreak(input.0, input.1) == output)
  }

  @Test func testWordBreak3() {
    let input = ("catsandog", ["cats", "dog", "sand", "and", "cat"])
    let output = false
    #expect(WordBreak().wordBreak(input.0, input.1) == output)
  }
}
