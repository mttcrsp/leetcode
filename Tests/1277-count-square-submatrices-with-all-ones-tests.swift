@testable
import Leetcode
import XCTest

final class CountSquareSubmatricesWithAllOnesTests: XCTestCase {
  func testCountSquares1() {
    let input = [[0, 1, 1, 1], [1, 1, 1, 1], [0, 1, 1, 1]]
    let output = 15
    XCTAssertEqual(CountSquareSubmatricesWithAllOnes().countSquares(input), output)
  }

  func testCountSquares2() {
    let input = [[1, 0, 1], [1, 1, 0], [1, 1, 0]]
    let output = 7
    XCTAssertEqual(CountSquareSubmatricesWithAllOnes().countSquares(input), output)
  }
}
