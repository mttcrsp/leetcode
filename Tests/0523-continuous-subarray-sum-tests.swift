@testable
import Leetcode
import XCTest

final class ContinuousSubarraySumTests: XCTestCase {
  func testChecksubarraysum1() {
    let input = ([23, 2, 4, 6, 7], 6)
    let output = true
    XCTAssertEqual(ContinuousSubarraySum().checkSubarraySum(input.0, input.1), output)
  }

  func testChecksubarraysum5() {
    let input = ([23, 2, 6, 4, 7], 13)
    let output = false
    XCTAssertEqual(ContinuousSubarraySum().checkSubarraySum(input.0, input.1), output)
  }
}
