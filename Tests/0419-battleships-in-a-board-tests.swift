@testable
import Leetcode
import XCTest

final class BattleshipsInABoardTests: XCTestCase {
  func testCountBattleships1() {
    let input: [[Character]] = [["X", ".", ".", "X"], [".", ".", ".", "X"], [".", ".", ".", "X"]]
    let output = 2
    XCTAssertEqual(BattleshipsInABoard().countBattleships(input), output)
  }

  func testCountBattleships2() {
    let input: [[Character]] = [["."]]
    let output = 0
    XCTAssertEqual(BattleshipsInABoard().countBattleships(input), output)
  }
}
