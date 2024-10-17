@testable
import Leetcode
import Testing

@Suite
struct MostStonesRemovedWithSameRowOrColumnTests {
  @Test func testRemoveStones1() {
    let input = [[0, 0], [0, 1], [1, 0], [1, 2], [2, 1], [2, 2]]
    let output = 5
    #expect(MostStonesRemovedWithSameRowOrColumn().removeStones(input) == output)
  }

  @Test func testRemoveStones2() {
    let input = [[0, 0], [0, 2], [1, 1], [2, 0], [2, 2]]
    let output = 3
    #expect(MostStonesRemovedWithSameRowOrColumn().removeStones(input) == output)
  }

  @Test func testRemoveStones3() {
    let input = [[0, 0]]
    let output = 0
    #expect(MostStonesRemovedWithSameRowOrColumn().removeStones(input) == output)
  }

  @Test func testRemoveStones4() {
    let input = [[0, 1], [1, 0]]
    let output = 0
    #expect(MostStonesRemovedWithSameRowOrColumn().removeStones(input) == output)
  }

  @Test func testRemoveStones5() {
    let input = [[3, 2], [3, 1], [4, 4], [1, 1], [0, 2], [4, 0]]
    let output = 4
    #expect(MostStonesRemovedWithSameRowOrColumn().removeStones(input) == output)
  }
}
