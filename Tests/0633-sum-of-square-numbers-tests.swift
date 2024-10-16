@testable
import Leetcode
import XCTest

final class SumOfSquareNumbersTests: XCTestCase {
  func testJudgeSquareSum1() {
    let input = 5
    let output = true
    XCTAssertEqual(SumOfSquareNumbers().judgeSquareSum(input), output)
  }

  func testJudgeSquareSum2() {
    let input = 3
    let output = false
    XCTAssertEqual(SumOfSquareNumbers().judgeSquareSum(input), output)
  }

  func testJudgeSquareSum3() {
    let input = 2
    let output = true
    XCTAssertEqual(SumOfSquareNumbers().judgeSquareSum(input), output)
  }

  func testJudgeSquareSum4() {
    let input = 0
    let output = true
    XCTAssertEqual(SumOfSquareNumbers().judgeSquareSum(input), output)
  }
}
