@testable
import Leetcode
import Testing

@Suite
struct CountSquareSubmatricesWithAllOnesTests {
  @Test func testCountSquares1() {
    let input = [[0, 1, 1, 1], [1, 1, 1, 1], [0, 1, 1, 1]]
    let output = 15
    #expect(CountSquareSubmatricesWithAllOnes().countSquares(input) == output)
  }

  @Test func testCountSquares2() {
    let input = [[1, 0, 1], [1, 1, 0], [1, 1, 0]]
    let output = 7
    #expect(CountSquareSubmatricesWithAllOnes().countSquares(input) == output)
  }
}
