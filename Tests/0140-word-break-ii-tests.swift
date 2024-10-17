@testable
import Leetcode
import Testing

@Suite
struct WordBreakIiTests {
  @Test func testWordBreak1() {
    let input = ("catsanddog", ["cat", "cats", "and", "sand", "dog"])
    let output = ["cats and dog", "cat sand dog"]
    #expect(Set(WordBreakIi().wordBreak(input.0, input.1)) == Set(output))
  }

  @Test func testWordBreak2() {
    let input = ("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"])
    let output = ["pine apple pen apple", "pineapple pen apple", "pine applepen apple"]
    #expect(Set(WordBreakIi().wordBreak(input.0, input.1)) == Set(output))
  }

  @Test func testWordBreak3() {
    let input = ("catsandog", ["cats", "dog", "sand", "and", "cat"])
    let output = [] as [String]
    #expect(Set(WordBreakIi().wordBreak(input.0, input.1)) == Set(output))
  }
}
