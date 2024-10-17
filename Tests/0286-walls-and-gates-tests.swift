@testable
import Leetcode
import Testing

@Suite
struct WallsAndGatesTests {
  @Test func testWallsAndGates1() {
    var input = [[2_147_483_647, -1, 0, 2_147_483_647], [2_147_483_647, 2_147_483_647, 2_147_483_647, -1], [2_147_483_647, -1, 2_147_483_647, -1], [0, -1, 2_147_483_647, 2_147_483_647]]
    let output = [[3, -1, 0, 1], [2, 2, 1, -1], [1, -1, 2, -1], [0, -1, 3, 4]]
    WallsAndGates().wallsAndGates(&input)
    #expect(input == output)
  }

  @Test func testWallsAndGates2() {
    var input = [[-1]]
    let output = [[-1]]
    WallsAndGates().wallsAndGates(&input)
    #expect(input == output)
  }
}
