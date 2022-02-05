@testable
import Leetcode
import XCTest

final class ShiftingLettersTests: XCTestCase {
  func testShiftingLetters1() {
    let input = ("abc", [3, 5, 9])
    let output = "rpl"
    XCTAssertEqual(ShiftingLetters().shiftingLetters(input.0, input.1), output)
  }

  func testShiftingLetters2() {
    let input = ("aaa", [1, 2, 3])
    let output = "gfd"
    XCTAssertEqual(ShiftingLetters().shiftingLetters(input.0, input.1), output)
  }

  func testShiftingLetters3() {
    let input = ("ilwpqakeru", [74, 56, 92, 3, 87, 4, 6, 5, 28, 345])
    let output = "gnuzxyesab"
    XCTAssertEqual(ShiftingLetters().shiftingLetters(input.0, input.1), output)
  }
}
