@testable
import Leetcode
import XCTest

final class QueriesOnAPermutationWithKeyTests: XCTestCase {
  func testProcessQueries1() {
    let input = ([3, 1, 2, 1], 5)
    let output = [2, 1, 2, 1]
    XCTAssertEqual(QueriesOnAPermutationWithKey().processQueries(input.0, input.1), output)
  }

  func testProcessQueries2() {
    let input = ([4, 1, 2, 2], 4)
    let output = [3, 1, 2, 0]
    XCTAssertEqual(QueriesOnAPermutationWithKey().processQueries(input.0, input.1), output)
  }

  func testProcessQueries3() {
    let input = ([7, 5, 5, 8, 3], 8)
    let output = [6, 5, 0, 7, 5]
    XCTAssertEqual(QueriesOnAPermutationWithKey().processQueries(input.0, input.1), output)
  }
}
