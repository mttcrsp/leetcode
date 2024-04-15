@testable
import Leetcode
import XCTest

final class Matrix01Tests: XCTestCase {
  func testUpdateMatrix1() {
    let input = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
    let output = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
    XCTAssertEqual(Matrix01().updateMatrix(input), output)
  }

  func testUpdateMatrix2() {
    let input = [[0, 0, 0], [0, 1, 0], [1, 1, 1]]
    let output = [[0, 0, 0], [0, 1, 0], [1, 2, 1]]
    XCTAssertEqual(Matrix01().updateMatrix(input), output)
  }

  func testUpdateMatrix3() {
    let input = [[1, 1, 1], [1, 1, 1], [1, 1, 0]]
    let output = [[4, 3, 2], [3, 2, 1], [2, 1, 0]]
    XCTAssertEqual(Matrix01().updateMatrix(input), output)
  }
}
