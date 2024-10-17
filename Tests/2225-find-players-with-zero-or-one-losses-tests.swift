@testable
import Leetcode
import Testing

@Suite
struct FindPlayersWithZeroOrOneLossesTests {
  @Test func testFindwinners1() {
    let input = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [4, 9], [10, 4], [10, 9]]
    let output = [[1, 2, 10], [4, 5, 7, 8]]
    #expect(FindPlayersWithZeroOrOneLosses().findWinners(input) == output)
  }

  @Test func testFindwinners2() {
    let input = [[2, 3], [1, 3], [5, 4], [6, 4]]
    let output = [[1, 2, 5, 6], []]
    #expect(FindPlayersWithZeroOrOneLosses().findWinners(input) == output)
  }
}
