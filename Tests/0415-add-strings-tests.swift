@testable
import Leetcode
import XCTest

final class AddStringsTests: XCTestCase {
  func testAddStrings1() {
    let input = ("11", "123")
    let output = "134"
    XCTAssertEqual(AddStrings().addStrings(input.0, input.1), output)
  }

  func testAddStrings2() {
    let input = ("456", "77")
    let output = "533"
    XCTAssertEqual(AddStrings().addStrings(input.0, input.1), output)
  }

  func testAddStrings3() {
    let input = ("0", "0")
    let output = "0"
    XCTAssertEqual(AddStrings().addStrings(input.0, input.1), output)
  }

  func testAddStrings4() {
    let input = ("1", "9")
    let output = "10"
    XCTAssertEqual(AddStrings().addStrings(input.0, input.1), output)
  }
}
