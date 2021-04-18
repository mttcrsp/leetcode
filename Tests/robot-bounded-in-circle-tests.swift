@testable
import Leetcode
import XCTest

final class RobotBoundedInCircleTests: XCTestCase {
  func testIsRobotBounded1() {
    let input = "GGLLGG"
    let output = true
    XCTAssertEqual(RobotBoundedInCircle().isRobotBounded(input), output)
  }

  func testIsRobotBounded2() {
    let input = "GG"
    let output = false
    XCTAssertEqual(RobotBoundedInCircle().isRobotBounded(input), output)
  }

  func testIsRobotBounded3() {
    let input = "GL"
    let output = true
    XCTAssertEqual(RobotBoundedInCircle().isRobotBounded(input), output)
  }
}
