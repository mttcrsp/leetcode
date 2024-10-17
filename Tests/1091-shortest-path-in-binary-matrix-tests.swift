@testable
import Leetcode
import Testing

@Suite
struct ShortestPathInBinaryMatrixTests {
  @Test func testShortestPathBinaryMatrix1() {
    let input = [[0, 1], [1, 0]]
    let output = 2
    #expect(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix(input) == output)
  }

  @Test func testShortestPathBinaryMatrix2() {
    let input = [[0, 0, 0], [1, 1, 0], [1, 1, 0]]
    let output = 4
    #expect(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix(input) == output)
  }

  @Test func testShortestPathBinaryMatrix3() {
    let input = [[1, 0, 0], [1, 1, 0], [1, 1, 0]]
    let output = -1
    #expect(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix(input) == output)
  }
}
