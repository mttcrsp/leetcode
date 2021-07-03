@testable
import Leetcode
import XCTest

final class RemoveCoveredIntervalsTests: XCTestCase {
  func testRemoveCoveredIntervals1() {
    let input = [[1, 4], [3, 6], [2, 8]]
    let output = 2
    XCTAssertEqual(RemoveCoveredIntervals().removeCoveredIntervals(input), output)
  }

  func testRemoveCoveredIntervals2() {
    let input = [[1, 4], [2, 3]]
    let output = 1
    XCTAssertEqual(RemoveCoveredIntervals().removeCoveredIntervals(input), output)
  }

  func testRemoveCoveredIntervals3() {
    let input = [[0, 10], [5, 12]]
    let output = 2
    XCTAssertEqual(RemoveCoveredIntervals().removeCoveredIntervals(input), output)
  }

  func testRemoveCoveredIntervals4() {
    let input = [[3, 10], [4, 10], [5, 11]]
    let output = 2
    XCTAssertEqual(RemoveCoveredIntervals().removeCoveredIntervals(input), output)
  }

  func testRemoveCoveredIntervals5() {
    let input = [[1, 2], [1, 4], [3, 4]]
    let output = 1
    XCTAssertEqual(RemoveCoveredIntervals().removeCoveredIntervals(input), output)
  }
}
