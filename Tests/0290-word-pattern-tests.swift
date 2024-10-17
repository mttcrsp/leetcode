@testable
import Leetcode
import Testing

@Suite
struct WordPatternTests {
  @Test func testWordPattern1() {
    let input = ("abba", "dog cat cat dog")
    let output = true
    #expect(WordPattern().wordPattern(input.0, input.1) == output)
  }

  @Test func testWordPattern2() {
    let input = ("abba", "dog cat cat fish")
    let output = false
    #expect(WordPattern().wordPattern(input.0, input.1) == output)
  }

  @Test func testWordPattern3() {
    let input = ("aaaa", "dog cat cat dog")
    let output = false
    #expect(WordPattern().wordPattern(input.0, input.1) == output)
  }

  @Test func testWordPattern4() {
    let input = ("abba", "dog dog dog dog")
    let output = false
    #expect(WordPattern().wordPattern(input.0, input.1) == output)
  }
}
