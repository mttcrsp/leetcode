@testable
import Leetcode
import XCTest

final class SqrtxTests: XCTestCase {
  func testMySqrt1() {
    let input = 4
    let output = 2
    XCTAssertEqual(Sqrtx().mySqrt(input), output)
  }

  func testMySqrt2() {
    let input = 8
    let output = 2
    XCTAssertEqual(Sqrtx().mySqrt(input), output)
  }

  func testMySqrt3() {
    let input = 9
    let output = 3
    XCTAssertEqual(Sqrtx().mySqrt(input), output)
  }
}
