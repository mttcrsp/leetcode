@testable
import Leetcode
import XCTest

final class PowxNTests: XCTestCase {
  func testMypow1() {
    let input = (2.00000, 10)
    let output = 1024.0
    XCTAssertEqual(PowxN().myPow(input.0, input.1), output, accuracy: 0.0001)
  }

  func testMypow2() {
    let input = (2.10000, 3)
    let output = 9.26100
    XCTAssertEqual(PowxN().myPow(input.0, input.1), output, accuracy: 0.0001)
  }

  func testMypow3() {
    let input = (2.00000, -2)
    let output = 0.25000
    XCTAssertEqual(PowxN().myPow(input.0, input.1), output, accuracy: 0.0001)
  }

  func testMypow4() {
    let input = (1.00000, -2_147_483_648)
    let output = 1.0
    XCTAssertEqual(PowxN().myPow(input.0, input.1), output, accuracy: 0.0001)
  }
}
