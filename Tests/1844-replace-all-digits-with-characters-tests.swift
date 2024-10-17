@testable
import Leetcode
import Testing

@Suite
struct ReplaceAllDigitsWithCharactersTests {
  @Test func testReplaceDigits1() {
    let input = "a1c1e1"
    let output = "abcdef"
    #expect(ReplaceAllDigitsWithCharacters().replaceDigits(input) == output)
  }

  @Test func testReplaceDigits2() {
    let input = "a1b2c3d4e"
    let output = "abbdcfdhe"
    #expect(ReplaceAllDigitsWithCharacters().replaceDigits(input) == output)
  }
}
