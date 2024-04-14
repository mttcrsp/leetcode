@testable
import Leetcode
import XCTest

final class Base7Tests: XCTestCase {
  func testConvertToBase71() {
    let input = 100
    let output = "202"
    XCTAssertEqual(Base7().convertToBase7(input), output)
  }

  func testConvertToBase72() {
    let input = -7
    let output = "-10"
    XCTAssertEqual(Base7().convertToBase7(input), output)
  }

  func testConvertToBase73() {
    let input = 49
    let output = "100"
    XCTAssertEqual(Base7().convertToBase7(input), output)
  }
}
