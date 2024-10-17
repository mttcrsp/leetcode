@testable
import Leetcode
import Testing

@Suite
struct ShiftingLettersTests {
  @Test func testShiftingLetters1() {
    let input = ("abc", [3, 5, 9])
    let output = "rpl"
    #expect(ShiftingLetters().shiftingLetters(input.0, input.1) == output)
  }

  @Test func testShiftingLetters2() {
    let input = ("aaa", [1, 2, 3])
    let output = "gfd"
    #expect(ShiftingLetters().shiftingLetters(input.0, input.1) == output)
  }

  @Test func testShiftingLetters3() {
    let input = ("ilwpqakeru", [74, 56, 92, 3, 87, 4, 6, 5, 28, 345])
    let output = "gnuzxyesab"
    #expect(ShiftingLetters().shiftingLetters(input.0, input.1) == output)
  }
}
