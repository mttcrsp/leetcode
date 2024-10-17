@testable
import Leetcode
import Testing

@Suite
struct Matrix01Tests {
  @Test func testUpdateMatrix1() {
    let input = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
    let output = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
    #expect(Matrix01().updateMatrix(input) == output)
  }

  @Test func testUpdateMatrix2() {
    let input = [[0, 0, 0], [0, 1, 0], [1, 1, 1]]
    let output = [[0, 0, 0], [0, 1, 0], [1, 2, 1]]
    #expect(Matrix01().updateMatrix(input) == output)
  }

  @Test func testUpdateMatrix3() {
    let input = [[1, 1, 1], [1, 1, 1], [1, 1, 0]]
    let output = [[4, 3, 2], [3, 2, 1], [2, 1, 0]]
    #expect(Matrix01().updateMatrix(input) == output)
  }
}
