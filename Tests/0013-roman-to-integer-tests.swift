@testable
import Leetcode
import XCTest

final class RomanToIntegerTests: XCTestCase {
  func testRomanToInt1() {
    let input = "III"
    let output = 3
    XCTAssertEqual(RomanToInteger().romanToInt(input), output)
  }

  func testRomanToInt2() {
    let input = "LVIII"
    let output = 58
    XCTAssertEqual(RomanToInteger().romanToInt(input), output)
  }

  func testRomanToInt3() {
    let input = "MCMXCIV"
    let output = 1994
    XCTAssertEqual(RomanToInteger().romanToInt(input), output)
  }
}
