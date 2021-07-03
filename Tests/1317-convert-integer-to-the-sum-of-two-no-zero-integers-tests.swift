@testable
import Leetcode
import XCTest

final class ConvertIntegerToTheSumOfTwoNoZeroIntegersTests: XCTestCase {
  func testGetNoZeroIntegers1() {
    let input = 2
    let output = [1, 1]
    XCTAssertEqual(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input), output)
  }

  func testGetNoZeroIntegers2() {
    let input = 69
    let output = [1, 68]
    XCTAssertEqual(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input), output)
  }

  func testGetNoZeroIntegers3() {
    let input = 11
    let output = [2, 9]
    XCTAssertEqual(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input), output)
  }

  func testGetNoZeroIntegers4() {
    let input = 10000
    let output = [1, 9999]
    XCTAssertEqual(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input), output)
  }

  func testGetNoZeroIntegers5() {
    let input = 1010
    let output = [11, 999]
    XCTAssertEqual(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input), output)
  }
}
