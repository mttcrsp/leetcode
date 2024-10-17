@testable
import Leetcode
import Testing

@Suite
struct BattleshipsInABoardTests {
  @Test func testCountBattleships1() {
    let input: [[Character]] = [["X", ".", ".", "X"], [".", ".", ".", "X"], [".", ".", ".", "X"]]
    let output = 2
    #expect(BattleshipsInABoard().countBattleships(input) == output)
  }

  @Test func testCountBattleships2() {
    let input: [[Character]] = [["."]]
    let output = 0
    #expect(BattleshipsInABoard().countBattleships(input) == output)
  }
}
