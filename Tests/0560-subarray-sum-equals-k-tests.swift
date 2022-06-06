@testable
import Leetcode
import XCTest

final class SubarraySumEqualsKTests: XCTestCase {
  func testTestSubarraysum1() {
    let input = ([1, 1, 1], 2)
    let output = 2
    XCTAssertEqual(SubarraySumEqualsK().subarraySum(input.0, input.1), output)
  }

  func testTestSubarraysum3() {
    let input = ([1, 2, 3], 3)
    let output = 2
    XCTAssertEqual(SubarraySumEqualsK().subarraySum(input.0, input.1), output)
  }
}
