@testable
import Leetcode
import XCTest

final class AddBinaryTests: XCTestCase {
  func testAddBinary1() {
    let input = ("11", "1")
    let output = "100"
    XCTAssertEqual(AddBinary().addBinary(input.0, input.1), output)
  }

  func testAddBinary2() {
    let input = ("1010", "1011")
    let output = "10101"
    XCTAssertEqual(AddBinary().addBinary(input.0, input.1), output)
  }

  func testAddBinary3() {
    let input = ("10", "10")
    let output = "100"
    XCTAssertEqual(AddBinary().addBinary(input.0, input.1), output)
  }

  func testAddBinary4() {
    let input = ("1", "0")
    let output = "1"
    XCTAssertEqual(AddBinary().addBinary(input.0, input.1), output)
  }
}
