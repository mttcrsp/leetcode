@testable
import Leetcode
import Testing

@Suite
struct MakingALargeIslandTests {
  @Test func testLargestIsland1() {
    let input = [[1, 0], [0, 1]]
    let output = 3
    #expect(MakingALargeIsland().largestIsland(input) == output)
  }

  @Test func testLargestIsland2() {
    let input = [[1, 1], [1, 0]]
    let output = 4
    #expect(MakingALargeIsland().largestIsland(input) == output)
  }

  @Test func testLargestIsland3() {
    let input = [[1, 1], [1, 1]]
    let output = 4
    #expect(MakingALargeIsland().largestIsland(input) == output)
  }

  @Test func testLargestIsland4() {
    let input = [[0, 0], [0, 0]]
    let output = 1
    #expect(MakingALargeIsland().largestIsland(input) == output)
  }

  @Test func testLargestIsland5() {
    let input = [[0, 0, 0, 0, 0, 0, 0], [0, 1, 1, 1, 1, 0, 0], [0, 1, 0, 0, 1, 0, 0], [1, 0, 1, 0, 1, 0, 0], [0, 1, 0, 0, 1, 0, 0], [0, 1, 0, 0, 1, 0, 0], [0, 1, 1, 1, 1, 0, 0]]
    let output = 18
    #expect(MakingALargeIsland().largestIsland(input) == output)
  }
}
