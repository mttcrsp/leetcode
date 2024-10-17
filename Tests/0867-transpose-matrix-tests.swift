@testable
import Leetcode
import Testing

@Suite
struct TransposeMatrixTests {
  @Test func testTranspose1() {
    let input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    #expect(TransposeMatrix().transpose(input) == output)
  }

  @Test func testTranspose2() {
    let input = [[1, 2, 3], [4, 5, 6]]
    let output = [[1, 4], [2, 5], [3, 6]]
    #expect(TransposeMatrix().transpose(input) == output)
  }
}
