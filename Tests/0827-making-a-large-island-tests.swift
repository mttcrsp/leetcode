@testable
import Leetcode
import XCTest

final class MakingALargeIslandTests: XCTestCase {
  func testLargestIsland1() {
    let input = [[1, 0], [0, 1]]
    let output = 3
    XCTAssertEqual(MakingALargeIsland().largestIsland(input), output)
  }

  func testLargestIsland2() {
    let input = [[1, 1], [1, 0]]
    let output = 4
    XCTAssertEqual(MakingALargeIsland().largestIsland(input), output)
  }

  func testLargestIsland3() {
    let input = [[1, 1], [1, 1]]
    let output = 4
    XCTAssertEqual(MakingALargeIsland().largestIsland(input), output)
  }

  func testLargestIsland4() {
    let input = [[0, 0], [0, 0]]
    let output = 1
    XCTAssertEqual(MakingALargeIsland().largestIsland(input), output)
  }

  func testLargestIsland5() {
    let input = [[0, 0, 0, 0, 0, 0, 0], [0, 1, 1, 1, 1, 0, 0], [0, 1, 0, 0, 1, 0, 0], [1, 0, 1, 0, 1, 0, 0], [0, 1, 0, 0, 1, 0, 0], [0, 1, 0, 0, 1, 0, 0], [0, 1, 1, 1, 1, 0, 0]]
    let output = 18
    XCTAssertEqual(MakingALargeIsland().largestIsland(input), output)
  }
}
