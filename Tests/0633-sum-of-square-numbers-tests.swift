@testable
import Leetcode
import Testing

@Suite
struct SumOfSquareNumbersTests {
  @Test func testJudgeSquareSum1() {
    let input = 5
    let output = true
    #expect(SumOfSquareNumbers().judgeSquareSum(input) == output)
  }

  @Test func testJudgeSquareSum2() {
    let input = 3
    let output = false
    #expect(SumOfSquareNumbers().judgeSquareSum(input) == output)
  }

  @Test func testJudgeSquareSum3() {
    let input = 2
    let output = true
    #expect(SumOfSquareNumbers().judgeSquareSum(input) == output)
  }

  @Test func testJudgeSquareSum4() {
    let input = 0
    let output = true
    #expect(SumOfSquareNumbers().judgeSquareSum(input) == output)
  }
}
