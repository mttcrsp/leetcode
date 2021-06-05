@testable
import Leetcode
import XCTest

final class PossibleBipartitionTests: XCTestCase {
  func testPossibleBipartition1() {
    let input = (4, [[1, 2], [1, 3], [2, 4]])
    let output = true
    XCTAssertEqual(PossibleBipartition().possibleBipartition(input.0, input.1), output)
  }

  func testPossibleBipartition2() {
    let input = (3, [[1, 2], [1, 3], [2, 3]])
    let output = false
    XCTAssertEqual(PossibleBipartition().possibleBipartition(input.0, input.1), output)
  }

  func testPossibleBipartition3() {
    let input = (5, [[1, 2], [2, 3], [3, 4], [4, 5], [1, 5]])
    let output = false
    XCTAssertEqual(PossibleBipartition().possibleBipartition(input.0, input.1), output)
  }
}
