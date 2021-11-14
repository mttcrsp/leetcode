@testable
import Leetcode
import XCTest

final class UglyNumberTests: XCTestCase {
  func testIsUgly1() {
    let input = 6
    let output = true
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly2() {
    let input = 8
    let output = true
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly3() {
    let input = 14
    let output = false
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly4() {
    let input = 1
    let output = true
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly5() {
    let input = 7
    let output = false
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly6() {
    let input = 15
    let output = true
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly7() {
    let input = 16
    let output = true
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly8() {
    let input = 22
    let output = false
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }

  func testIsUgly9() {
    let input = 0
    let output = false
    XCTAssertEqual(UglyNumber().isUgly(input), output)
  }
}
