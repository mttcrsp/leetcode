@testable
import Leetcode
import XCTest

final class SingleNumberTests: XCTestCase {
  func testSingleNumber1() {
    let input = [2, 2, 1]
    let output = 1
    XCTAssertEqual(SingleNumber().singleNumber(input), output)
  }

  func testSingleNumber2() {
    let input = [4, 1, 2, 1, 2]
    let output = 4
    XCTAssertEqual(SingleNumber().singleNumber(input), output)
  }

  func testSingleNumber3() {
    let input = [1]
    let output = 1
    XCTAssertEqual(SingleNumber().singleNumber(input), output)
  }

  func testSingleNumber4() {
    let input = [-1, 1, -1, 1, -2]
    let output = -2
    XCTAssertEqual(SingleNumber().singleNumber(input), output)
  }
}
