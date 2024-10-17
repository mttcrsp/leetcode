@testable
import Leetcode
import Testing

@Suite
struct RepeatedSubstringPatternTests {
  @Test func testRepeatedSubstringPattern1() {
    let input = "abab"
    let output = true
    #expect(RepeatedSubstringPattern().repeatedSubstringPattern(input) == output)
  }

  @Test func testRepeatedSubstringPattern2() {
    let input = "aba"
    let output = false
    #expect(RepeatedSubstringPattern().repeatedSubstringPattern(input) == output)
  }

  @Test func testRepeatedSubstringPattern3() {
    let input = "abcabcabcabc"
    let output = true
    #expect(RepeatedSubstringPattern().repeatedSubstringPattern(input) == output)
  }

  @Test func testRepeatedSubstringPattern4() {
    let input = "abaabaaba"
    let output = true
    #expect(RepeatedSubstringPattern().repeatedSubstringPattern(input) == output)
  }

  @Test func testRepeatedSubstringPattern5() {
    let input = "a"
    let output = false
    #expect(RepeatedSubstringPattern().repeatedSubstringPattern(input) == output)
  }
}
