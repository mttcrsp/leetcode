@testable
import Leetcode
import Testing

@Suite
struct TaskSchedulerTests {
  @Test func testLeastInterval1() {
    let input = (["A", "A", "A", "B", "B", "B"] as [Character], 2)
    let output = 8
    #expect(TaskScheduler().leastInterval(input.0, input.1) == output)
  }

  @Test func testLeastInterval2() {
    let input = (["A", "A", "A", "B", "B", "B"] as [Character], 0)
    let output = 6
    #expect(TaskScheduler().leastInterval(input.0, input.1) == output)
  }

  @Test func testLeastInterval3() {
    let input = (["A", "A", "A", "A", "A", "A", "B", "C", "D", "E", "F", "G"] as [Character], 2)
    let output = 16
    #expect(TaskScheduler().leastInterval(input.0, input.1) == output)
  }

  @Test func testLeastInterval4() {
    let input = (["A", "A", "A", "B", "B", "B", "C", "C", "C", "D", "D", "E"] as [Character], 2)
    let output = 12
    #expect(TaskScheduler().leastInterval(input.0, input.1) == output)
  }
}
