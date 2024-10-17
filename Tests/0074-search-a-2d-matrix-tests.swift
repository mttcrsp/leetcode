@testable
import Leetcode
import Testing

@Suite
struct SearchA2DMatrixTests {
  @Test func testSearchmatrix1() {
    let input = ([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3)
    let output = true
    #expect(SearchA2DMatrix().searchMatrix(input.0, input.1) == output)
  }

  @Test func testSearchmatrix2() {
    let input = ([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13)
    let output = false
    #expect(SearchA2DMatrix().searchMatrix(input.0, input.1) == output)
  }
}
