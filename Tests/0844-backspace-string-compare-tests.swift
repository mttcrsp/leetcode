@testable
import Leetcode
import XCTest

final class BackspaceStringCompareTests: XCTestCase {
  func testTestBackspacecompare1() {
    let input = ("ab#c", "ad#c")
    let output = true
    XCTAssertEqual(BackspaceStringCompare().backspaceCompare(input.0, input.1), output)
  }

  func testTestBackspacecompare2() {
    let input = ("ab##", "c#d#")
    let output = true
    XCTAssertEqual(BackspaceStringCompare().backspaceCompare(input.0, input.1), output)
  }

  func testTestBackspacecompare3() {
    let input = ("a#c", "b")
    let output = false
    XCTAssertEqual(BackspaceStringCompare().backspaceCompare(input.0, input.1), output)
  }
}
