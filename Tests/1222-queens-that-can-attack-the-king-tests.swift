@testable
import Leetcode
import Testing

@Suite
struct QueensThatCanAttackTheKingTests {
  @Test func testQueensAttacktheKing1() {
    let input = ([[0, 1], [1, 0], [4, 0], [0, 4], [3, 3], [2, 4]], [0, 0])
    let output = Set([[0, 1], [1, 0], [3, 3]])
    #expect(Set(QueensThatCanAttackTheKing().queensAttacktheKing(input.0, input.1)) == output)
  }
}
