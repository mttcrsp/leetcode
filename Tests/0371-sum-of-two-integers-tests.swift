@testable
import Leetcode
import XCTest

final class SumOfTwoIntegersTests: XCTestCase {
  func testTestGetsum1() {
    let input = (1, 2)
    let output = 3
    XCTAssertEqual(SumOfTwoIntegers().getSum(input.0, input.1), output)
  }

  func testTestGetsum2() {
    let input = (2, 3)
    let output = 5
    XCTAssertEqual(SumOfTwoIntegers().getSum(input.0, input.1), output)
  }

  func testTestGetsum3() {
    let input = (1, 3)
    let output = 4
    XCTAssertEqual(SumOfTwoIntegers().getSum(input.0, input.1), output)
  }

  func testTestGetsum4() {
    let input = (1, -2)
    let output = -1
    XCTAssertEqual(SumOfTwoIntegers().getSum(input.0, input.1), output)
  }
}
