@testable
import Leetcode
import XCTest

final class SetMatrixZeroesTests: XCTestCase {
  func testTestSetzeroes1() {
    var input = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
    let output = [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
    SetMatrixZeroes().setZeroes(&input)
    XCTAssertEqual(input, output)
  }

  func testTestSetzeroes2() {
    var input = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]
    let output = [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]]
    SetMatrixZeroes().setZeroes(&input)
    XCTAssertEqual(input, output)
  }
}
