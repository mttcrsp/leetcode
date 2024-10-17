@testable
import Leetcode
import Testing

@Suite
struct LongestRepeatingCharacterReplacementTests {
  @Test func testCharacterReplacement1() {
    let input = ("ABAB", 2)
    let output = 4
    #expect(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1) == output)
  }

  @Test func testCharacterReplacement2() {
    let input = ("AABABBA", 1)
    let output = 4
    #expect(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1) == output)
  }

  @Test func testCharacterReplacement3() {
    let input = ("AABABBBA", 0)
    let output = 3
    #expect(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1) == output)
  }

  @Test func testCharacterReplacement4() {
    let input = ("", 2)
    let output = 0
    #expect(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1) == output)
  }

  @Test func testCharacterReplacement5() {
    let input = ("AABCBBBA", 2)
    let output = 6
    #expect(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1) == output)
  }

  @Test func testCharacterReplacement6() {
    let input = ("BAAAB", 2)
    let output = 5
    #expect(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1) == output)
  }
}
