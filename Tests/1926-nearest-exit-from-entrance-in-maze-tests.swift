@testable
import Leetcode
import XCTest

final class NearestExitFromEntranceInMazeTests: XCTestCase {
  func testNearestexit1() {
    let input = ([["+", "+", ".", "+"], [".", ".", ".", "+"], ["+", "+", "+", "."]] as [[Character]], [1, 2])
    let output = 1
    XCTAssertEqual(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1), output)
  }

  func testNearestexit2() {
    let input = ([["+", "+", "+"], [".", ".", "."], ["+", "+", "+"]] as [[Character]], [1, 0])
    let output = 2
    XCTAssertEqual(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1), output)
  }

  func testNearestexit3() {
    let input = ([[".", "+"]] as [[Character]], [0, 0])
    let output = -1
    XCTAssertEqual(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1), output)
  }

  func testNearestexit4() {
    let input = ([["+", ".", "+", "+", "+", "+", "+"], ["+", ".", "+", ".", ".", ".", "+"], ["+", ".", "+", ".", "+", ".", "+"], ["+", ".", ".", ".", "+", ".", "+"], ["+", "+", "+", "+", "+", "+", "."]] as [[Character]], [0, 1])
    let output = -1
    XCTAssertEqual(NearestExitFromEntranceInMaze().nearestExit(input.0, input.1), output)
  }
}
