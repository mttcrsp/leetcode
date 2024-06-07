@testable
import Leetcode
import XCTest

final class ExpressionAddOperatorsTests: XCTestCase {
  func testAddOperators1() {
    let input = ("123", 6)
    let output = ["1+2+3", "1*2*3"]
    XCTAssertEqual(Set(ExpressionAddOperators().addOperators(input.0, input.1)), Set(output))
  }

  func testAddOperators2() {
    let input = ("232", 8)
    let output = ["2*3+2", "2+3*2"]
    XCTAssertEqual(Set(ExpressionAddOperators().addOperators(input.0, input.1)), Set(output))
  }

  func testAddOperators3() {
    let input = ("3456237490", 9191)
    let output = [] as [String]
    XCTAssertEqual(Set(ExpressionAddOperators().addOperators(input.0, input.1)), Set(output))
  }
}
