@testable
import Leetcode
import XCTest

final class CalculateDigitSumOfAStringTests: XCTestCase {
  func testTestDigitsum1() {
    let input = ("11111222223", 3)
    let output = "135"
    XCTAssertEqual(CalculateDigitSumOfAString().digitSum(input.0, input.1), output)
  }

  func testTestDigitsum2() {
    let input = ("00000000", 3)
    let output = "000"
    XCTAssertEqual(CalculateDigitSumOfAString().digitSum(input.0, input.1), output)
  }

  func testTestDigitsum3() {
    let input = ("99999999", 4)
    let output = "3636"
    XCTAssertEqual(CalculateDigitSumOfAString().digitSum(input.0, input.1), output)
  }
}
