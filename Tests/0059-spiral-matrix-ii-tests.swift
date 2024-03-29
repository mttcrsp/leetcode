@testable
import Leetcode
import XCTest

final class SpiralMatrixIiTests: XCTestCase {
  func testGeneratematrix1() {
    let input = 3
    let output = [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
    XCTAssertEqual(SpiralMatrixIi().generateMatrix(input), output)
  }

  func testGeneratematrix2() {
    let input = 1
    let output = [[1]]
    XCTAssertEqual(SpiralMatrixIi().generateMatrix(input), output)
  }
}
