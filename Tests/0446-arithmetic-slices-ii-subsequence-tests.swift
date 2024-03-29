@testable
import Leetcode
import XCTest

final class ArithmeticSlicesIiSubsequenceTests: XCTestCase {
  func testNumberOfArithmeticSlices1() {
    let input = [2, 4, 6, 8, 10]
    let output = 7
    XCTAssertEqual(ArithmeticSlicesIiSubsequence().numberOfArithmeticSlices(input), output)
  }

  func testNumberOfArithmeticSlices2() {
    let input = [7, 7, 7, 7, 7]
    let output = 16
    XCTAssertEqual(ArithmeticSlicesIiSubsequence().numberOfArithmeticSlices(input), output)
  }

  func testNumberOfArithmeticSlices3() {
    let input = [2, 6, 2, 10, 2, 1, 0, 14]
    let output = 7
    XCTAssertEqual(ArithmeticSlicesIiSubsequence().numberOfArithmeticSlices(input), output)
  }
}
