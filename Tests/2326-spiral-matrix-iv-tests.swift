@testable
import Leetcode
import Testing

@Suite
struct SpiralMatrixIvTests {
  @Test func testSpiralmatrix1() {
    let input = (3, 5, ListNode.makeList([3, 0, 2, 6, 8, 1, 7, 9, 4, 2, 5, 5, 0]))
    let output = [[3, 0, 2, 6, 8], [5, 0, -1, -1, 1], [5, 2, 4, 9, 7]]
    #expect(SpiralMatrixIv().spiralMatrix(input.0, input.1, input.2) == output)
  }

  @Test func testSpiralmatrix2() {
    let input = (1, 4, ListNode.makeList([0, 1, 2]))
    let output = [[0, 1, 2, -1]]
    #expect(SpiralMatrixIv().spiralMatrix(input.0, input.1, input.2) == output)
  }
}
