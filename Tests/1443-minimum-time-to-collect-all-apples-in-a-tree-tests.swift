@testable
import Leetcode
import XCTest

final class MinimumTimeToCollectAllApplesInATreeTests: XCTestCase {
  func testMinTime1() {
    let input = (7, [[0, 1], [0, 2], [1, 4], [1, 5], [2, 3], [2, 6]], [false, false, true, false, true, true, false])
    let output = 8
    XCTAssertEqual(MinimumTimeToCollectAllApplesInATree().minTime(input.0, input.1, input.2), output)
  }

  func testMinTime2() {
    let input = (7, [[0, 1], [0, 2], [1, 4], [1, 5], [2, 3], [2, 6]], [false, false, true, false, false, true, false])
    let output = 6
    XCTAssertEqual(MinimumTimeToCollectAllApplesInATree().minTime(input.0, input.1, input.2), output)
  }

  func testMinTime3() {
    let input = (7, [[0, 1], [0, 2], [1, 4], [1, 5], [2, 3], [2, 6]], [false, false, false, false, false, false, false])
    let output = 0
    XCTAssertEqual(MinimumTimeToCollectAllApplesInATree().minTime(input.0, input.1, input.2), output)
  }
}
