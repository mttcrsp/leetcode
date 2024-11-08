@testable
import Leetcode
import XCTest

final class MaximumXorForEachQueryTests: XCTestCase {
  func testGetMaximumXor1() {
    let input = ([0, 1, 1, 3], 2)
    let output = [0, 3, 2, 3]
    XCTAssertEqual(MaximumXorForEachQuery().getMaximumXor(input.0, input.1), output)
  }

  func testGetMaximumXor2() {
    let input = ([2, 3, 4, 7], 3)
    let output = [5, 2, 6, 5]
    XCTAssertEqual(MaximumXorForEachQuery().getMaximumXor(input.0, input.1), output)
  }

  func testGetMaximumXor3() {
    let input = ([0, 1, 2, 2, 5, 7], 3)
    let output = [4, 3, 6, 4, 6, 7]
    XCTAssertEqual(MaximumXorForEachQuery().getMaximumXor(input.0, input.1), output)
  }

  func testGetMaximumXor4() {
    let input = ([0], 1)
    let output = [1]
    XCTAssertEqual(MaximumXorForEachQuery().getMaximumXor(input.0, input.1), output)
  }
}
