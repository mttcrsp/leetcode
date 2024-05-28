@testable
import Leetcode
import XCTest

final class MostStonesRemovedWithSameRowOrColumnTests: XCTestCase {
  func testRemoveStones1() {
    let input = [[0, 0], [0, 1], [1, 0], [1, 2], [2, 1], [2, 2]]
    let output = 5
    XCTAssertEqual(MostStonesRemovedWithSameRowOrColumn().removeStones(input), output)
  }

  func testRemoveStones2() {
    let input = [[0, 0], [0, 2], [1, 1], [2, 0], [2, 2]]
    let output = 3
    XCTAssertEqual(MostStonesRemovedWithSameRowOrColumn().removeStones(input), output)
  }

  func testRemoveStones3() {
    let input = [[0, 0]]
    let output = 0
    XCTAssertEqual(MostStonesRemovedWithSameRowOrColumn().removeStones(input), output)
  }

  func testRemoveStones4() {
    let input = [[0, 1], [1, 0]]
    let output = 0
    XCTAssertEqual(MostStonesRemovedWithSameRowOrColumn().removeStones(input), output)
  }

  func testRemoveStones5() {
    let input = [[3, 2], [3, 1], [4, 4], [1, 1], [0, 2], [4, 0]]
    let output = 4
    XCTAssertEqual(MostStonesRemovedWithSameRowOrColumn().removeStones(input), output)
  }
}
