@testable
import Leetcode
import Testing

@Suite
struct NearestExitFromEntranceInMazeTests {
  @Test func testNearestexit1() {
    let input = ([["+", "+", ".", "+"], [".", ".", ".", "+"], ["+", "+", "+", "."]] as [[Character]], [1, 2])
    let output = 1
    #expect(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1) == output)
  }

  @Test func testNearestexit2() {
    let input = ([["+", "+", "+"], [".", ".", "."], ["+", "+", "+"]] as [[Character]], [1, 0])
    let output = 2
    #expect(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1) == output)
  }

  @Test func testNearestexit3() {
    let input = ([[".", "+"]] as [[Character]], [0, 0])
    let output = -1
    #expect(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1) == output)
  }

  @Test func testNearestexit4() {
    let input = ([["+", ".", "+", "+", "+", "+", "+"], ["+", ".", "+", ".", ".", ".", "+"], ["+", ".", "+", ".", "+", ".", "+"], ["+", ".", ".", ".", "+", ".", "+"], ["+", "+", "+", "+", "+", "+", "."]] as [[Character]], [0, 1])
    let output = -1
    #expect(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1) == output)
  }
}
