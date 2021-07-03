@testable
import Leetcode
import XCTest

final class MaximumAveragePassRatioTests: XCTestCase {
  func testMaxAverageRatio1() {
    let input = ([[1, 2], [3, 5], [2, 2]], 2)
    let output = 0.78333
    XCTAssertEqual(MaximumAveragePassRatio().maxAverageRatio(input.0, input.1), output, accuracy: 0.00001)
  }

  func testMaxAverageRatio2() {
    let input = ([[2, 4], [3, 9], [4, 5], [2, 10]], 4)
    let output = 0.53485
    XCTAssertEqual(MaximumAveragePassRatio().maxAverageRatio(input.0, input.1), output, accuracy: 0.00001)
  }
}
