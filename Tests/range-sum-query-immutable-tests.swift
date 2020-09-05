@testable
import Leetcode
import XCTest

extension SolutionTests {
  private var numArray: NumArray {
    .init([-2, 0, 3, -5, 2, -1])
  }

  func testSumRange1() {
    let input = (0, 2)
    let output = 1
    XCTAssertEqual(numArray.sumRange(input.0, input.1), output)
  }

  func testSumRange2() {
    let input = (2, 5)
    let output = -1
    XCTAssertEqual(numArray.sumRange(input.0, input.1), output)
  }

  func testSumRange3() {
    let input = (0, 5)
    let output = -3
    XCTAssertEqual(numArray.sumRange(input.0, input.1), output)
  }
}
