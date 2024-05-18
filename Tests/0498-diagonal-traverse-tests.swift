@testable
import Leetcode
import XCTest

final class DiagonalTraverseTests: XCTestCase {
  func testFindDiagonalOrder1() {
    let input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [1, 2, 4, 7, 5, 3, 6, 8, 9]
    XCTAssertEqual(DiagonalTraverse().findDiagonalOrder(input), output)
  }

  func testFindDiagonalOrder2() {
    let input = [[1, 2], [3, 4]]
    let output = [1, 2, 3, 4]
    XCTAssertEqual(DiagonalTraverse().findDiagonalOrder(input), output)
  }
}
