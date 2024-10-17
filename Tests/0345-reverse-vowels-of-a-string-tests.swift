@testable
import Leetcode
import Testing

@Suite
struct ReverseVowelsOfAStringTests {
  @Test func testReversevowels1() {
    let input = "hello"
    let output = "holle"
    #expect(ReverseVowelsOfAString().reverseVowels(input) == output)
  }

  @Test func testReversevowels2() {
    let input = "leetcode"
    let output = "leotcede"
    #expect(ReverseVowelsOfAString().reverseVowels(input) == output)
  }
}
