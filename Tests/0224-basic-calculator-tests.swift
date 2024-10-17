@testable
import Leetcode
import Testing

@Suite
struct BasicCalculatorTests {
  @Test func testCalculate1() {
    let input = "1 + 1"
    let output = 2
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate2() {
    let input = " 2-1 + 2 "
    let output = 3
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate3() {
    let input = "(1+(4+5+2)-3)+(6+8)"
    let output = 23
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate4() {
    let input = "12"
    let output = 12
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate5() {
    let input = "1 - (4 + 3)"
    let output = -6
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate6() {
    let input = "(4 + 3)"
    let output = 7
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate7() {
    let input = "-(1+(4+5+2)-3)"
    let output = -9
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate8() {
    let input = "0 -(1)"
    let output = -1
    #expect(BasicCalculator().calculate(input) == output)
  }

  @Test func testCalculate9() {
    let input = "(1 - 2) - (2 + 1) - (1 - (2 - (1 + 1) - 2))"
    let output = -7
    #expect(BasicCalculator().calculate(input) == output)
  }
}
