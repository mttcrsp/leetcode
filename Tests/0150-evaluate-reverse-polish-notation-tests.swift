@testable
import Leetcode
import Testing

@Suite
struct EvaluateReversePolishNotationTests {
  @Test func testEvalrpn1() {
    let input = ["2", "1", "+", "3", "*"]
    let output = 9
    #expect(EvaluateReversePolishNotation().evalRPN(input) == output)
  }

  @Test func testEvalrpn2() {
    let input = ["4", "13", "5", "/", "+"]
    let output = 6
    #expect(EvaluateReversePolishNotation().evalRPN(input) == output)
  }

  @Test func testEvalrpn3() {
    let input = ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
    let output = 22
    #expect(EvaluateReversePolishNotation().evalRPN(input) == output)
  }
}
