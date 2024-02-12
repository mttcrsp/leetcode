@testable
import Leetcode
import XCTest

final class MissingNumberTests: XCTestCase {
  func testMissingnumber1() {
    let input = [3, 0, 1]
    let output = 2
    XCTAssertEqual(MissingNumber().missingNumber(input), output)
  }

  func testMissingnumber2() {
    let input = [0, 1]
    let output = 2
    XCTAssertEqual(MissingNumber().missingNumber(input), output)
  }

  func testMissingnumber3() {
    let input = [9, 6, 4, 2, 3, 5, 7, 0, 1]
    let output = 8
    XCTAssertEqual(MissingNumber().missingNumber(input), output)
  }
}
