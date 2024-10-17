@testable
import Leetcode
import Testing

@Suite
struct LargestSubstringBetweenTwoEqualCharactersTests {
  @Test func testMaxlengthbetweenequalcharacters1() {
    let input = "aa"
    let output = 0
    #expect(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input) == output)
  }

  @Test func testMaxlengthbetweenequalcharacters2() {
    let input = "abca"
    let output = 2
    #expect(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input) == output)
  }

  @Test func testMaxlengthbetweenequalcharacters3() {
    let input = "cbzxy"
    let output = -1
    #expect(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input) == output)
  }

  @Test func testMaxlengthbetweenequalcharacters4() {
    let input = "cccccccccccc"
    let output = 10
    #expect(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input) == output)
  }
}
