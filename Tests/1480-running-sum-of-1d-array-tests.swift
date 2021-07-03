@testable
import Leetcode
import XCTest

final class RunningSumOf1DArrayTests: XCTestCase {
  func testRunningSum1() {
    let input = [1, 2, 3, 4]
    let output = [1, 3, 6, 10]
    XCTAssertEqual(RunningSumOf1DArray().runningSum(input), output)
  }

  func testRunningSum2() {
    let input = [1, 1, 1, 1, 1]
    let output = [1, 2, 3, 4, 5]
    XCTAssertEqual(RunningSumOf1DArray().runningSum(input), output)
  }

  func testRunningSum3() {
    let input = [3, 1, 2, 10, 1]
    let output = [3, 4, 6, 16, 17]
    XCTAssertEqual(RunningSumOf1DArray().runningSum(input), output)
  }
}
