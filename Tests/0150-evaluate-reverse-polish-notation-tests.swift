@testable
import Leetcode
import XCTest

final class EvaluateReversePolishNotationTests: XCTestCase {
  func testTestEvalrpn1() {
    let input = ["2", "1", "+", "3", "*"]
    let output = 9
    XCTAssertEqual(EvaluateReversePolishNotation().evalRPN(input), output)
  }

  func testTestEvalrpn2() {
    let input = ["4", "13", "5", "/", "+"]
    let output = 6
    XCTAssertEqual(EvaluateReversePolishNotation().evalRPN(input), output)
  }

  func testTestEvalrpn3() {
    let input = ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
    let output = 22
    XCTAssertEqual(EvaluateReversePolishNotation().evalRPN(input), output)
  }
}
