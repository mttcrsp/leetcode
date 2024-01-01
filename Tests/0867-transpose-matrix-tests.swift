@testable
import Leetcode
import XCTest

final class TransposeMatrixTests: XCTestCase {
  func testTestTranspose1() {
    let input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    XCTAssertEqual(TransposeMatrix().transpose(input), output)
  }

  func testTestTranspose2() {
    let input = [[1, 2, 3], [4, 5, 6]]
    let output = [[1, 4], [2, 5], [3, 6]]
    XCTAssertEqual(TransposeMatrix().transpose(input), output)
  }
}
