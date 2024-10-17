@testable
import Leetcode
import Testing

@Suite
struct SquaresOfASortedArrayTests {
  @Test func testSortedSquares1() {
    let input = [-4, -1, 0, 3, 10]
    let output = [0, 1, 9, 16, 100]
    #expect(SquaresOfASortedArray().sortedSquares(input) == output)
  }

  @Test func testSortedSquares2() {
    let input = [-7, -3, 2, 3, 11]
    let output = [4, 9, 9, 49, 121]
    #expect(SquaresOfASortedArray().sortedSquares(input) == output)
  }
}
