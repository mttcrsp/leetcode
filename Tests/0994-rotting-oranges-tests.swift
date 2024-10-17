@testable
import Leetcode
import Testing

@Suite
struct RottingOrangesTests {
  @Test func testOrangesRotting1() {
    let input = [[2, 1, 1], [1, 1, 0], [0, 1, 1]]
    let output = 4
    #expect(RottingOranges().orangesRotting(input) == output)
  }

  @Test func testOrangesRotting2() {
    let input = [[1], [1], [1], [1]]
    let output = -1
    #expect(RottingOranges().orangesRotting(input) == output)
  }

  @Test func testOrangesRotting3() {
    let input = [[0, 2]]
    let output = 0
    #expect(RottingOranges().orangesRotting(input) == output)
  }

  @Test func testOrangesRotting4() {
    let input = [[2, 1, 1], [0, 1, 1], [1, 0, 1]]
    let output = -1
    #expect(RottingOranges().orangesRotting(input) == output)
  }

  @Test func testOrangesRotting5() {
    let input = [[0]]
    let output = 0
    #expect(RottingOranges().orangesRotting(input) == output)
  }

  @Test func testOrangesRotting6() {
    let input = [[2], [2], [1], [0], [1], [1]]
    let output = -1
    #expect(RottingOranges().orangesRotting(input) == output)
  }
}
