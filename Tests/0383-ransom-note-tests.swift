@testable
import Leetcode
import Testing

@Suite
struct RansomNoteTests {
  @Test func testCanconstruct1() {
    let input = ("a", "b")
    let output = false
    #expect(RansomNote().canConstruct(input.0, input.1) == output)
  }

  @Test func testCanconstruct2() {
    let input = ("aa", "ab")
    let output = false
    #expect(RansomNote().canConstruct(input.0, input.1) == output)
  }

  @Test func testCanconstruct3() {
    let input = ("aa", "aab")
    let output = true
    #expect(RansomNote().canConstruct(input.0, input.1) == output)
  }
}
