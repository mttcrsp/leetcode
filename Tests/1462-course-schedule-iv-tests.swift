@testable
import Leetcode
import Testing

@Suite
struct CourseScheduleIvTests {
  @Test func testCheckIfPrerequisite1() {
    let input = (2, [[1, 0]], [[0, 1], [1, 0]])
    let output = [false, true]
    #expect(CourseScheduleIv().checkIfPrerequisite(input.0, input.1, input.2) == output)
  }

  @Test func testCheckIfPrerequisite2() {
    let input = (2, [] as [[Int]], [[1, 0], [0, 1]])
    let output = [false, false]
    #expect(CourseScheduleIv().checkIfPrerequisite(input.0, input.1, input.2) == output)
  }

  @Test func testCheckIfPrerequisite3() {
    let input = (3, [[1, 2], [1, 0], [2, 0]], [[1, 0], [1, 2]])
    let output = [true, true]
    #expect(CourseScheduleIv().checkIfPrerequisite(input.0, input.1, input.2) == output)
  }
}
