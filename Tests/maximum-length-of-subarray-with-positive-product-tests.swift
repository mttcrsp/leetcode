@testable
import Leetcode
import XCTest

final class MaximumLengthOfSubarrayWithPositiveProductTests: XCTestCase {
  func testGetMaxLen1() {
    let input = [1, -2, -3, 4]
    let output = 4
    XCTAssertEqual(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input), output)
  }

  func testGetMaxLen2() {
    let input = [0, 1, -2, -3, -4]
    let output = 3
    XCTAssertEqual(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input), output)
  }

  func testGetMaxLen3() {
    let input = [-1, -2, -3, 0, 1]
    let output = 2
    XCTAssertEqual(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input), output)
  }

  func testGetMaxLen4() {
    let input = [-1, 2]
    let output = 1
    XCTAssertEqual(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input), output)
  }

  func testGetMaxLen5() {
    let input = [1, 2, 3, 5, -6, 4, 0, 10]
    let output = 4
    XCTAssertEqual(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input), output)
  }

  func testGetMaxLen6() {
    let input = [-1, -2, 0, -3]
    let output = 2
    XCTAssertEqual(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input), output)
  }
}
