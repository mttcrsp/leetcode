@testable
import Leetcode
import Testing

@Suite
struct BasicCalculatorIiTests {
  @Test func testCalculate1() {
    let input = "3+2*2"
    let output = 7
    #expect(BasicCalculatorIi().calculate(input) == output)
  }

  @Test func testCalculate2() {
    let input = " 3/2 "
    let output = 1
    #expect(BasicCalculatorIi().calculate(input) == output)
  }

  @Test func testCalculate3() {
    let input = " 3+5 / 2 "
    let output = 5
    #expect(BasicCalculatorIi().calculate(input) == output)
  }

  @Test func testCalculate4() {
    let input = "   1  "
    let output = 1
    #expect(BasicCalculatorIi().calculate(input) == output)
  }

  @Test func testCalculate5() {
    let input = "   1 + 2 - 3 * 4 / 5 / 6 * 7 - 8 + 9 + 0  "
    let output = 4
    #expect(BasicCalculatorIi().calculate(input) == output)
  }

  @Test func testCalculate6() {
    let input = "  12/ 3+471-26/348*7+1/2-6+30847   "
    let output = 31316
    #expect(BasicCalculatorIi().calculate(input) == output)
  }
}
