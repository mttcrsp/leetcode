@testable
import Leetcode
import Testing

@Suite
struct RobotBoundedInCircleTests {
  @Test func testIsRobotBounded1() {
    let input = "GGLLGG"
    let output = true
    #expect(RobotBoundedInCircle().isRobotBounded(input) == output)
  }

  @Test func testIsRobotBounded2() {
    let input = "GG"
    let output = false
    #expect(RobotBoundedInCircle().isRobotBounded(input) == output)
  }

  @Test func testIsRobotBounded3() {
    let input = "GL"
    let output = true
    #expect(RobotBoundedInCircle().isRobotBounded(input) == output)
  }
}
