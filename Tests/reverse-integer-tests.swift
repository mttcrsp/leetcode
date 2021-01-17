@testable
import Leetcode
import XCTest

final class ReverseIntegerTests: XCTestCase {
  func testReverse1() {
    let input = 0
    let output = 0
    XCTAssertEqual(ReverseInteger().reverse(input), output)
  }

  func testReverse2() {
    let input = 123
    let output = 321
    XCTAssertEqual(ReverseInteger().reverse(input), output)
  }

  func testReverse3() {
    let input = 1200
    let output = 21
    XCTAssertEqual(ReverseInteger().reverse(input), output)
  }

  func testReverse4() {
    let input = -123
    let output = -321
    XCTAssertEqual(ReverseInteger().reverse(input), output)
  }

  func testReverse5() {
    let input = -1230
    let output = -321
    XCTAssertEqual(ReverseInteger().reverse(input), output)
  }

  func testReverse6() {
    let input = 1_534_236_469
    let output = 0
    XCTAssertEqual(ReverseInteger().reverse(input), output)
  }
}
