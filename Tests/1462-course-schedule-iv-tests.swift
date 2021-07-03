@testable
import Leetcode
import XCTest

final class CourseScheduleIvTests: XCTestCase {
  func testCheckIfPrerequisite1() {
    let input = (2, [[1, 0]], [[0, 1], [1, 0]])
    let output = [false, true]
    XCTAssertEqual(CourseScheduleIv().checkIfPrerequisite(input.0, input.1, input.2), output)
  }

  func testCheckIfPrerequisite2() {
    let input = (2, [] as [[Int]], [[1, 0], [0, 1]])
    let output = [false, false]
    XCTAssertEqual(CourseScheduleIv().checkIfPrerequisite(input.0, input.1, input.2), output)
  }

  func testCheckIfPrerequisite3() {
    let input = (3, [[1, 2], [1, 0], [2, 0]], [[1, 0], [1, 2]])
    let output = [true, true]
    XCTAssertEqual(CourseScheduleIv().checkIfPrerequisite(input.0, input.1, input.2), output)
  }
}
