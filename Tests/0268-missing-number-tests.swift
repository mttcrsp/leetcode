@testable
import Leetcode
import XCTest

final class MissingNumberTests: XCTestCase {
  func testTestMissingnumber1() {
    let input = [3, 0, 1]
    let output = 2
    XCTAssertEqual(MissingNumber().missingNumber(input), output)
  }

  func testTestMissingnumber2() {
    let input = [0, 1]
    let output = 2
    XCTAssertEqual(MissingNumber().missingNumber(input), output)
  }

  func testTestMissingnumber3() {
    let input = [9, 6, 4, 2, 3, 5, 7, 0, 1]
    let output = 8
    XCTAssertEqual(MissingNumber().missingNumber(input), output)
  }
}
