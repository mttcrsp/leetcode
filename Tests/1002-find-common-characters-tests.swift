@testable
import Leetcode
import Testing

@Suite
struct FindCommonCharactersTests {
  @Test func testCommonChars1() {
    let input = ["bella", "label", "roller"]
    let output = ["e", "l", "l"]
    #expect(Set(FindCommonCharacters().commonChars(input)) == Set(output))
  }

  @Test func testCommonChars2() {
    let input = ["cool", "lock", "cook"]
    let output = ["c", "o"]
    #expect(Set(FindCommonCharacters().commonChars(input)) == Set(output))
  }

  @Test func testCommonChars3() {
    let input = ["cool"]
    let output = ["c", "o", "o", "l"]
    #expect(Set(FindCommonCharacters().commonChars(input)) == Set(output))
  }
}
