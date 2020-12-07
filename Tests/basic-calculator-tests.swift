@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testCalculate1() {
    let input = "1 + 1"
    let output = 2
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate2() {
    let input = " 2-1 + 2 "
    let output = 3
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate3() {
    let input = "(1+(4+5+2)-3)+(6+8)"
    let output = 23
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate4() {
    let input = "12"
    let output = 12
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate5() {
    let input = "1 - (4 + 3)"
    let output = -6
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate6() {
    let input = "(4 + 3)"
    let output = 7
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate7() {
    let input = "-(1+(4+5+2)-3)"
    let output = -9
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate8() {
    let input = "0 -(1)"
    let output = -1
    XCTAssertEqual(Solution().calculate(input), output)
  }

  func testCalculate9() {
    let input = "(1 - 2) - (2 + 1) - (1 - (2 - (1 + 1) - 2))"
    let output = -7
    XCTAssertEqual(Solution().calculate(input), output)
  }
}
