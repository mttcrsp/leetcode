@testable
import Leetcode
import XCTest

final class FloodFillTests: XCTestCase {
  func testFloodFill1() {
    let input = ([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2)
    let output = [[2, 2, 2], [2, 2, 0], [2, 0, 1]]
    XCTAssertEqual(FloodFill().floodFill(input.0, input.1, input.2, input.3), output)
  }

  func testFloodFill2() {
    let input = ([[0, 0, 0], [0, 0, 0]], 0, 0, 0)
    let output = [[0, 0, 0], [0, 0, 0]]
    XCTAssertEqual(FloodFill().floodFill(input.0, input.1, input.2, input.3), output)
  }
}
