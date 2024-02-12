@testable
import Leetcode
import XCTest

final class LeftAndRightSumDifferencesTests: XCTestCase {
  func testLeftrightdifference1() {
    let input = [10, 4, 8, 3]
    let output = [15, 1, 11, 22]
    XCTAssertEqual(LeftAndRightSumDifferences().leftRightDifference(input), output)
  }

  func testLeftrightdifference2() {
    let input = [1]
    let output = [0]
    XCTAssertEqual(LeftAndRightSumDifferences().leftRightDifference(input), output)
  }
}
