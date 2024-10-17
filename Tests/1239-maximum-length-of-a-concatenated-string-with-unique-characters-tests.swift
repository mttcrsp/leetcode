@testable
import Leetcode
import Testing

@Suite
struct MaximumLengthOfAConcatenatedStringWithUniqueCharactersTests {
  @Test func testMaxlength1() {
    let input = ["un", "iq", "ue"]
    let output = 4
    #expect(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input) == output)
  }

  @Test func testMaxlength2() {
    let input = ["cha", "r", "act", "ers"]
    let output = 6
    #expect(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input) == output)
  }

  @Test func testMaxlength3() {
    let input = ["abcdefghijklmnopqrstuvwxyz"]
    let output = 26
    #expect(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input) == output)
  }

  @Test func testMaxlength4() {
    let input = ["abc", "ab", "cd"]
    let output = 4
    #expect(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input) == output)
  }

  @Test func testMaxlength5() {
    let input = ["aa", "bb"]
    let output = 0
    #expect(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input) == output)
  }
}
