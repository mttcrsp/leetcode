@testable
import Leetcode
import XCTest

final class MinimumTimeDifferenceTests: XCTestCase {
  func testFindMinDifference1() {
    let input = ["23:59", "00:00"]
    let output = 1
    XCTAssertEqual(MinimumTimeDifference().findMinDifference(input), output)
  }

  func testFindMinDifference2() {
    let input = ["00:00", "23:59", "00:00"]
    let output = 0
    XCTAssertEqual(MinimumTimeDifference().findMinDifference(input), output)
  }

  func testFindMinDifference3() {
    let input = ["14:15", "14:00", "00:00", "00:02", "23:52", "13:59"]
    let output = 1
    XCTAssertEqual(MinimumTimeDifference().findMinDifference(input), output)
  }
}
