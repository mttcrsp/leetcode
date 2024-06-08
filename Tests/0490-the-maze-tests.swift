@testable
import Leetcode
import XCTest

final class TheMazeTests: XCTestCase {
  func testAddOperators1() {
    let input = ([[0, 0, 1, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 1, 0], [1, 1, 0, 1, 1], [0, 0, 0, 0, 0]], [0, 4], [4, 4])
    let output = true
    XCTAssertEqual(TheMaze().hasPath(input.0, input.1, input.2), output)
  }

  func testAddOperators2() {
    let input = ([[0, 0, 1, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 1, 0], [1, 1, 0, 1, 1], [0, 0, 0, 0, 0]], [0, 4], [3, 2])
    let output = false
    XCTAssertEqual(TheMaze().hasPath(input.0, input.1, input.2), output)
  }

  func testAddOperators3() {
    let input = ([[0, 0, 0, 0, 0], [1, 1, 0, 0, 1], [0, 0, 0, 0, 0], [0, 1, 0, 0, 1], [0, 1, 0, 0, 0]], [4, 3], [0, 1])
    let output = false
    XCTAssertEqual(TheMaze().hasPath(input.0, input.1, input.2), output)
  }
}
