@testable
import Leetcode
import XCTest

final class BackspaceStringCompareTests: XCTestCase {
  func testBackspacecompare1() {
    let input = ("ab#c", "ad#c")
    let output = true
    XCTAssertEqual(BackspaceStringCompare().backspaceCompare(input.0, input.1), output)
  }

  func testBackspacecompare2() {
    let input = ("ab##", "c#d#")
    let output = true
    XCTAssertEqual(BackspaceStringCompare().backspaceCompare(input.0, input.1), output)
  }

  func testBackspacecompare3() {
    let input = ("a#c", "b")
    let output = false
    XCTAssertEqual(BackspaceStringCompare().backspaceCompare(input.0, input.1), output)
  }
}
