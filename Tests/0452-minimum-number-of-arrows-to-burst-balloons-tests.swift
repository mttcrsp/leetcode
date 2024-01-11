@testable
import Leetcode
import XCTest

final class MinimumNumberOfArrowsToBurstBalloonsTests: XCTestCase {
  func testTestFindminarrowshots1() {
    let input = [[10, 16], [2, 8], [1, 6], [7, 12]]
    let output = 2
    XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons().findMinArrowShots(input), output)
  }

  func testTestFindminarrowshots2() {
    let input = [[1, 2], [3, 4], [5, 6], [7, 8]]
    let output = 4
    XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons().findMinArrowShots(input), output)
  }

  func testTestFindminarrowshots3() {
    let input = [[1, 2], [2, 3], [3, 4], [4, 5]]
    let output = 2
    XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons().findMinArrowShots(input), output)
  }
}
