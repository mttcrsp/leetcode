@testable
import Leetcode
import XCTest

final class MinimumSizeSubarraySumTests: XCTestCase {
  func testMinSubArrayLen1() {
    let input = (7, [2, 3, 1, 2, 4, 3])
    let output = 2
    XCTAssertEqual(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1), output)
  }

  func testMinSubArrayLen2() {
    let input = (10, [2, 2, 2, 2, 2, 2, 2, 4, 6, 2, 2, 2])
    let output = 2
    XCTAssertEqual(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1), output)
  }

  func testMinSubArrayLen3() {
    let input = (10, [2, 2, 2, 2, 2, 2, 11, 4, 6, 2, 2, 2])
    let output = 1
    XCTAssertEqual(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1), output)
  }

  func testMinSubArrayLen4() {
    let input = (10, [1, 1, 1, 1, 1, 1, 1, 1, 1])
    let output = 0
    XCTAssertEqual(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1), output)
  }

  func testMinSubArrayLen5() {
    let input = (10, [100])
    let output = 1
    XCTAssertEqual(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1), output)
  }

  func testMinSubArrayLen6() {
    let input = (10, [] as [Int])
    let output = 0
    XCTAssertEqual(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1), output)
  }
}
