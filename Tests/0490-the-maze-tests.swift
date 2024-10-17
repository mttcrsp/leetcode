@testable
import Leetcode
import Testing

@Suite
struct TheMazeTests {
  @Test func testAddOperators1() {
    let input = ([[0, 0, 1, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 1, 0], [1, 1, 0, 1, 1], [0, 0, 0, 0, 0]], [0, 4], [4, 4])
    let output = true
    #expect(TheMaze().hasPath(input.0, input.1, input.2) == output)
  }

  @Test func testAddOperators2() {
    let input = ([[0, 0, 1, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 1, 0], [1, 1, 0, 1, 1], [0, 0, 0, 0, 0]], [0, 4], [3, 2])
    let output = false
    #expect(TheMaze().hasPath(input.0, input.1, input.2) == output)
  }

  @Test func testAddOperators3() {
    let input = ([[0, 0, 0, 0, 0], [1, 1, 0, 0, 1], [0, 0, 0, 0, 0], [0, 1, 0, 0, 1], [0, 1, 0, 0, 0]], [4, 3], [0, 1])
    let output = false
    #expect(TheMaze().hasPath(input.0, input.1, input.2) == output)
  }
}
