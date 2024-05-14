@testable
import Leetcode
import XCTest

final class ShortestPathInBinaryMatrixTests: XCTestCase {
  func testShortestPathBinaryMatrix1() {
    let input = [[0, 1], [1, 0]]
    let output = 2
    XCTAssertEqual(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix(input), output)
  }

  func testShortestPathBinaryMatrix2() {
    let input = [[0, 0, 0], [1, 1, 0], [1, 1, 0]]
    let output = 4
    XCTAssertEqual(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix(input), output)
  }

  func testShortestPathBinaryMatrix3() {
    let input = [[1, 0, 0], [1, 1, 0], [1, 1, 0]]
    let output = -1
    XCTAssertEqual(ShortestPathInBinaryMatrix().shortestPathBinaryMatrix(input), output)
  }
}
