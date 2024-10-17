@testable
import Leetcode
import Testing

@Suite
struct DiagonalTraverseIiTests {
  @Test func testFindDiagonalOrder1() {
    let input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [1, 4, 2, 7, 5, 3, 8, 6, 9]
    #expect(DiagonalTraverseIi().findDiagonalOrder(input) == output)
  }

  @Test func testFindDiagonalOrder2() {
    let input = [[1, 2, 3, 4, 5], [6, 7], [8], [9, 10, 11], [12, 13, 14, 15, 16]]
    let output = [1, 6, 2, 8, 7, 3, 9, 4, 12, 10, 5, 13, 11, 14, 15, 16]
    #expect(DiagonalTraverseIi().findDiagonalOrder(input) == output)
  }
}
