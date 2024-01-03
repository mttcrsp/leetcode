@testable
import Leetcode
import XCTest

final class MinimumDistanceToTheTargetElementTests: XCTestCase {
  func testTestGetmindistance1() {
    let input = ([1, 2, 3, 4, 5], 5, 3)
    let output = 1
    XCTAssertEqual(MinimumDistanceToTheTargetElement().getMinDistance(input.0, input.1, input.2), output)
  }

  func testTestGetmindistance4() {
    let input = ([1], 1, 0)
    let output = 0
    XCTAssertEqual(MinimumDistanceToTheTargetElement().getMinDistance(input.0, input.1, input.2), output)
  }

  func testTestGetmindistance7() {
    let input = ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 0)
    let output = 0
    XCTAssertEqual(MinimumDistanceToTheTargetElement().getMinDistance(input.0, input.1, input.2), output)
  }
}
