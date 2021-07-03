@testable
import Leetcode
import XCTest

final class StringToIntegerAtoiTests: XCTestCase {
  func testMyAtoi1() {
    let input = "42"
    let output = 42
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi2() {
    let input = "   -42"
    let output = -42
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi3() {
    let input = "4193 with words"
    let output = 4193
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi4() {
    let input = "words and 987"
    let output = 0
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi5() {
    let input = "-91283472332"
    let output = -2_147_483_648
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi6() {
    let input = "20000000000000000000"
    let output = 2_147_483_647
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi7() {
    let input = "9223372036854775808"
    let output = 2_147_483_647
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }

  func testMyAtoi8() {
    let input = "-9223372036854775808"
    let output = -2_147_483_648
    XCTAssertEqual(StringToIntegerAtoi().myAtoi(input), output)
  }
}
