@testable
import Leetcode
import Testing

@Suite
struct ToeplitzMatrixTests {
  @Test func testIsToeplitzMatrix1() {
    let input = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]
    let output = true
    #expect(ToeplitzMatrix().isToeplitzMatrix(input) == output)
  }

  @Test func testIsToeplitzMatrix2() {
    let input = [[1, 2], [2, 2]]
    let output = false
    #expect(ToeplitzMatrix().isToeplitzMatrix(input) == output)
  }
}
