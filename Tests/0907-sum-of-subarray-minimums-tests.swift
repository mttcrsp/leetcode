@testable
import Leetcode
import XCTest

final class SumOfSubarrayMinimumsTests: XCTestCase {
  func testTestSumsubarraymins1() {
    let input = [3, 1, 2, 4]
    let output = 17
    XCTAssertEqual(SumOfSubarrayMinimums().sumSubarrayMins(input), output)
  }

  func testTestSumsubarraymins2() {
    let input = [11, 81, 94, 43, 3]
    let output = 444
    XCTAssertEqual(SumOfSubarrayMinimums().sumSubarrayMins(input), output)
  }
}
