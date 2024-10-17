@testable
import Leetcode
import Testing

@Suite
struct CourseScheduleTests {
  @Test func testCanfinish1() {
    let input = (2, [[1, 0]])
    let output = true
    #expect(CourseSchedule().canFinish(input.0, input.1) == output)
  }

  @Test func testCanfinish2() {
    let input = (2, [[1, 0], [0, 1]])
    let output = false
    #expect(CourseSchedule().canFinish(input.0, input.1) == output)
  }

  @Test func testCanfinish3() {
    let input = (1, [] as [[Int]])
    let output = true
    #expect(CourseSchedule().canFinish(input.0, input.1) == output)
  }

  @Test func testCanfinish4() {
    let input = (5, [[1, 4], [2, 4], [3, 1], [3, 2]])
    let output = true
    #expect(CourseSchedule().canFinish(input.0, input.1) == output)
  }
}
