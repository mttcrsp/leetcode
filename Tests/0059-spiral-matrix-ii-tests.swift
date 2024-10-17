@testable
import Leetcode
import Testing

@Suite
struct SpiralMatrixIiTests {
  @Test func testGeneratematrix1() {
    let input = 3
    let output = [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
    #expect(SpiralMatrixIi().generateMatrix(input) == output)
  }

  @Test func testGeneratematrix2() {
    let input = 1
    let output = [[1]]
    #expect(SpiralMatrixIi().generateMatrix(input) == output)
  }
}
