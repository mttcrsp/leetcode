@testable
import Leetcode
import Testing

@Suite
struct ExpressionAddOperatorsTests {
  @Test func testAddOperators1() {
    let input = ("123", 6)
    let output = ["1+2+3", "1*2*3"]
    #expect(Set(ExpressionAddOperators().addOperators(input.0, input.1)) == Set(output))
  }

  @Test func testAddOperators2() {
    let input = ("232", 8)
    let output = ["2*3+2", "2+3*2"]
    #expect(Set(ExpressionAddOperators().addOperators(input.0, input.1)) == Set(output))
  }

  @Test func testAddOperators3() {
    let input = ("3456237490", 9191)
    let output = [] as [String]
    #expect(Set(ExpressionAddOperators().addOperators(input.0, input.1)) == Set(output))
  }
}
