@testable
import Leetcode
import XCTest

final class FindTriangularSumOfAnArrayTests: XCTestCase {
  func testTriangularSum1() {
    let input = [1, 2, 3, 4, 5]
    let output = 8
    XCTAssertEqual(FindTriangularSumOfAnArray().triangularSum(input), output)
  }

  func testTriangularSum2() {
    let input = [5]
    let output = 5
    XCTAssertEqual(FindTriangularSumOfAnArray().triangularSum(input), output)
  }
}
