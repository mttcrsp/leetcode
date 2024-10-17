@testable
import Leetcode
import Testing

@Suite
struct DecodeStringTests {
  @Test func testDecodestring1() {
    let input = "3[a]2[bc]"
    let output = "aaabcbc"
    #expect(DecodeString().decodeString(input) == output)
  }

  @Test func testDecodestring2() {
    let input = "3[a2[c]]"
    let output = "accaccacc"
    #expect(DecodeString().decodeString(input) == output)
  }

  @Test func testDecodestring3() {
    let input = "2[abc]3[cd]ef"
    let output = "abcabccdcdcdef"
    #expect(DecodeString().decodeString(input) == output)
  }
}
