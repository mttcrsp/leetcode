@testable
import Leetcode
import Testing

@Suite
struct SpecialPositionsInABinaryMatrixTests {
  @Test func testNumspecial1() {
    let input = [[1, 0, 0], [0, 0, 1], [1, 0, 0]]
    let output = 1
    #expect(SpecialPositionsInABinaryMatrix().numSpecial(input) == output)
  }

  @Test func testNumspecial2() {
    let input = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    let output = 3
    #expect(SpecialPositionsInABinaryMatrix().numSpecial(input) == output)
  }
}
