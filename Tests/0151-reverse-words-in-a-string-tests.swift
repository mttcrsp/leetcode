@testable
import Leetcode
import Testing

@Suite
struct ReverseWordsInAStringTests {
  @Test func testReversewords1() {
    let input = "the sky is blue"
    let output = "blue is sky the"
    #expect(ReverseWordsInAString().reverseWords(input) == output)
  }

  @Test func testReversewords2() {
    let input = "  hello world  "
    let output = "world hello"
    #expect(ReverseWordsInAString().reverseWords(input) == output)
  }

  @Test func testReversewords3() {
    let input = "a good   example"
    let output = "example good a"
    #expect(ReverseWordsInAString().reverseWords(input) == output)
  }
}
