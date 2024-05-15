@testable
import Leetcode
import XCTest

final class ToeplitzMatrixTests: XCTestCase {
  func testIsToeplitzMatrix1() {
    let input = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]
    let output = true
    XCTAssertEqual(ToeplitzMatrix().isToeplitzMatrix(input), output)
  }

  func testIsToeplitzMatrix2() {
    let input = [[1, 2], [2, 2]]
    let output = false
    XCTAssertEqual(ToeplitzMatrix().isToeplitzMatrix(input), output)
  }
}
