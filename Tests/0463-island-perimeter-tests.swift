@testable
import Leetcode
import XCTest

final class IslandPerimeterTests: XCTestCase {
  func testIslandPerimeter1() {
    let input = [[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]]
    let output = 16
    XCTAssertEqual(IslandPerimeter().islandPerimeter(input), output)
  }

  func testIslandPerimeter2() {
    let input = [[1]]
    let output = 4
    XCTAssertEqual(IslandPerimeter().islandPerimeter(input), output)
  }

  func testIslandPerimeter3() {
    let input = [[1, 0]]
    let output = 4
    XCTAssertEqual(IslandPerimeter().islandPerimeter(input), output)
  }
}
