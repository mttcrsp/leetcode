@testable
import Leetcode
import XCTest

final class FindPlayersWithZeroOrOneLossesTests: XCTestCase {
  func testFindwinners1() {
    let input = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [4, 9], [10, 4], [10, 9]]
    let output = [[1, 2, 10], [4, 5, 7, 8]]
    XCTAssertEqual(FindPlayersWithZeroOrOneLosses().findWinners(input), output)
  }

  func testFindwinners2() {
    let input = [[2, 3], [1, 3], [5, 4], [6, 4]]
    let output = [[1, 2, 5, 6], []]
    XCTAssertEqual(FindPlayersWithZeroOrOneLosses().findWinners(input), output)
  }
}
