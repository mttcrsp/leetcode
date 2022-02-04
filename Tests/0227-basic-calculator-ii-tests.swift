@testable
import Leetcode
import XCTest

final class BasicCalculatorIiTests: XCTestCase {
  func testCalculate1() {
    let input = "3+2*2"
    let output = 7
    XCTAssertEqual(BasicCalculatorIi().calculate(input), output)
  }

  func testCalculate2() {
    let input = " 3/2 "
    let output = 1
    XCTAssertEqual(BasicCalculatorIi().calculate(input), output)
  }

  func testCalculate3() {
    let input = " 3+5 / 2 "
    let output = 5
    XCTAssertEqual(BasicCalculatorIi().calculate(input), output)
  }

  func testCalculate4() {
    let input = "   1  "
    let output = 1
    XCTAssertEqual(BasicCalculatorIi().calculate(input), output)
  }

  func testCalculate5() {
    let input = "   1 + 2 - 3 * 4 / 5 / 6 * 7 - 8 + 9 + 0  "
    let output = 4
    XCTAssertEqual(BasicCalculatorIi().calculate(input), output)
  }

  func testCalculate6() {
    let input = "  12/ 3+471-26/348*7+1/2-6+30847   "
    let output = 31316
    XCTAssertEqual(BasicCalculatorIi().calculate(input), output)
  }
}
