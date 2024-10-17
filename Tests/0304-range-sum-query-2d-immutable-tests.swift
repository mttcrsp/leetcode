@testable
import Leetcode
import Testing

@Suite
struct RangeSumQuery2DImmutableTests {
  @Test func testSumRegion1() {
    let matrix = NumMatrix([[3, 0, 1, 4, 2], [5, 6, 3, 2, 1], [1, 2, 0, 1, 5], [4, 1, 0, 1, 7], [1, 0, 3, 0, 5]])
    #expect(matrix.sumRegion(2, 1, 4, 3) == 8)
    #expect(matrix.sumRegion(1, 1, 2, 2) == 11)
    #expect(matrix.sumRegion(1, 2, 2, 4) == 12)
  }

  @Test func testSumRegion2() {
    let matrix = NumMatrix([[-4, -5]])
    #expect(matrix.sumRegion(0, 0, 0, 0) == -4)
    #expect(matrix.sumRegion(0, 0, 0, 1) == -9)
    #expect(matrix.sumRegion(0, 1, 0, 1) == -5)
  }
}
