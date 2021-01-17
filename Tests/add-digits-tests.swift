@testable
import Leetcode
import XCTest

final class AddDigitsTests: XCTestCase {
  func testAddDigits1() {
    let input = 38
    let output = 2
    XCTAssertEqual(AddDigits().addDigits(input), output)
  }

  func testAddDigits2() {
    let input = 0
    let output = 0
    XCTAssertEqual(AddDigits().addDigits(input), output)
  }

  func testAddDigits3() {
    let input = 9
    let output = 9
    XCTAssertEqual(AddDigits().addDigits(input), output)
  }

  func testAddDigits4() {
    let input = 10
    let output = 1
    XCTAssertEqual(AddDigits().addDigits(input), output)
  }

  func testAddDigits5() {
    let input = 999
    let output = 9
    XCTAssertEqual(AddDigits().addDigits(input), output)
  }
}
