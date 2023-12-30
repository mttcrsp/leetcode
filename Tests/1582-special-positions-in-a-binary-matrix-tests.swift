@testable
import Leetcode
import XCTest

final class SpecialPositionsInABinaryMatrixTests: XCTestCase {
  func testTestNumspecial1() {
    let input = [[1, 0, 0], [0, 0, 1], [1, 0, 0]]
    let output = 1
    XCTAssertEqual(SpecialPositionsInABinaryMatrix().numSpecial(input), output)
  }

  func testTestNumspecial2() {
    let input = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    let output = 3
    XCTAssertEqual(SpecialPositionsInABinaryMatrix().numSpecial(input), output)
  }
}
