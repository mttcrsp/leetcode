@testable
import Leetcode
import XCTest

final class LongPressedNameTests: XCTestCase {
  func testIsLongPressedName1() {
    let input = ("alex", "aaleex")
    let output = true
    XCTAssertEqual(LongPressedName().isLongPressedName(input.0, input.1), output)
  }

  func testIsLongPressedName2() {
    let input = ("saeed", "ssaaedd")
    let output = false
    XCTAssertEqual(LongPressedName().isLongPressedName(input.0, input.1), output)
  }

  func testIsLongPressedName3() {
    let input = ("a", "aaaaaaaaaaa")
    let output = true
    XCTAssertEqual(LongPressedName().isLongPressedName(input.0, input.1), output)
  }
}
