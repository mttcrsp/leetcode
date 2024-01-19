@testable
import Leetcode
import XCTest

final class CourseScheduleTests: XCTestCase {
  func testTestCanfinish1() {
    let input = (2, [[1, 0]])
    let output = true
    XCTAssertEqual(CourseSchedule().canFinish(input.0, input.1), output)
  }

  func testTestCanfinish2() {
    let input = (2, [[1, 0], [0, 1]])
    let output = false
    XCTAssertEqual(CourseSchedule().canFinish(input.0, input.1), output)
  }

  func testTestCanfinish3() {
    let input = (1, [] as [[Int]])
    let output = true
    XCTAssertEqual(CourseSchedule().canFinish(input.0, input.1), output)
  }

  func testTestCanfinish4() {
    let input = (5, [[1, 4], [2, 4], [3, 1], [3, 2]])
    let output = true
    XCTAssertEqual(CourseSchedule().canFinish(input.0, input.1), output)
  }
}
