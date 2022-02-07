@testable
import Leetcode
import XCTest

final class MaximumGapTests: XCTestCase {
  func testMaximumGap1() {
    let input = [3, 6, 9, 1]
    let output = 3
    XCTAssertEqual(MaximumGap().maximumGap(input), output)
  }

  func testMaximumGap2() {
    let input = [10]
    let output = 0
    XCTAssertEqual(MaximumGap().maximumGap(input), output)
  }

  func testMaximumGap3() {
    let input = [1, 10, 1000]
    let output = 990
    XCTAssertEqual(MaximumGap().maximumGap(input), output)
  }
}
