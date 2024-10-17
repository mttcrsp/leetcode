@testable
import Leetcode
import Testing

@Suite
struct SurroundedRegionsTests {
  @Test func testSolve1() {
    var input: [[Character]] = [["X", "X", "X", "X"], ["X", "O", "O", "X"], ["X", "X", "O", "X"], ["X", "O", "X", "X"]]
    let output: [[Character]] = [["X", "X", "X", "X"], ["X", "X", "X", "X"], ["X", "X", "X", "X"], ["X", "O", "X", "X"]]
    SurroundedRegions().solve(&input)
    #expect(input == output)
  }

  @Test func testSolve2() {
    var input: [[Character]] = [["X"]]
    let output: [[Character]] = [["X"]]
    SurroundedRegions().solve(&input)
    #expect(input == output)
  }
}
