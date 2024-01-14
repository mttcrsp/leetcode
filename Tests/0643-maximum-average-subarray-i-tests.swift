@testable
import Leetcode
import XCTest

final class MaximumAverageSubarrayITests: XCTestCase {
  func testTestFindmaxaverage1() {
    let input = ([1, 12, -5, -6, 50, 3], 4)
    let output = 12.75
    XCTAssertEqual(MaximumAverageSubarrayI().findMaxAverage(input.0, input.1), output)
  }

  func testTestFindmaxaverage3() {
    let input = ([5], 1)
    let output = 5.0
    XCTAssertEqual(MaximumAverageSubarrayI().findMaxAverage(input.0, input.1), output)
  }
}
