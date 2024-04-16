@testable
import Leetcode
import XCTest

final class SearchInsertPositionTests: XCTestCase {
  func testSearchInsert1() {
    let input = ([1, 3, 5, 6], 5)
    let output = 2
    XCTAssertEqual(SearchInsertPosition().searchInsert(input.0, input.1), output)
  }

  func testSearchInsert2() {
    let input = ([1, 3, 5, 6], 2)
    let output = 1
    XCTAssertEqual(SearchInsertPosition().searchInsert(input.0, input.1), output)
  }

  func testSearchInsert3() {
    let input = ([1, 3, 5, 6], 7)
    let output = 4
    XCTAssertEqual(SearchInsertPosition().searchInsert(input.0, input.1), output)
  }
}
