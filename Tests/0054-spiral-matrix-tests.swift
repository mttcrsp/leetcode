@testable
import Leetcode
import Testing

@Suite
struct SpiralMatrixTests {
  @Test func testSpiralorder1() {
    let input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [1, 2, 3, 6, 9, 8, 7, 4, 5]
    #expect(SpiralMatrix().spiralOrder(input) == output)
  }

  @Test func testSpiralorder2() {
    let input = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
    let output = [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]
    #expect(SpiralMatrix().spiralOrder(input) == output)
  }
}
