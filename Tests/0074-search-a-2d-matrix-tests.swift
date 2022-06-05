@testable
import Leetcode
import XCTest

final class SearchA2DMatrixTests: XCTestCase {
  func testSearchmatrix1() {
    let input = ([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3)
    let output = true
    XCTAssertEqual(SearchA2DMatrix().searchMatrix(input.0, input.1), output)
  }

  func testSearchmatrix2() {
    let input = ([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13)
    let output = false
    XCTAssertEqual(SearchA2DMatrix().searchMatrix(input.0, input.1), output)
  }
}
