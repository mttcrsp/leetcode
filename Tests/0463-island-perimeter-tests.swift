@testable
import Leetcode
import Testing

@Suite
struct IslandPerimeterTests {
  @Test func testIslandPerimeter1() {
    let input = [[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]]
    let output = 16
    #expect(IslandPerimeter().islandPerimeter(input) == output)
  }

  @Test func testIslandPerimeter2() {
    let input = [[1]]
    let output = 4
    #expect(IslandPerimeter().islandPerimeter(input) == output)
  }

  @Test func testIslandPerimeter3() {
    let input = [[1, 0]]
    let output = 4
    #expect(IslandPerimeter().islandPerimeter(input) == output)
  }
}
