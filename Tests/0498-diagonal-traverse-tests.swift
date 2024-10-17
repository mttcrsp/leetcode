@testable
import Leetcode
import Testing

@Suite
struct DiagonalTraverseTests {
  @Test func testFindDiagonalOrder1() {
    let input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [1, 2, 4, 7, 5, 3, 6, 8, 9]
    #expect(DiagonalTraverse().findDiagonalOrder(input) == output)
  }

  @Test func testFindDiagonalOrder2() {
    let input = [[1, 2], [3, 4]]
    let output = [1, 2, 3, 4]
    #expect(DiagonalTraverse().findDiagonalOrder(input) == output)
  }
}
