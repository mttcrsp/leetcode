@testable
import Leetcode
import XCTest

final class SearchInsertPositionTests: XCTestCase {
  func testSearchInsert1() {
    let input = [1, 3, 5, 6]
    let output = 0
    XCTAssertEqual(SearchInsertPosition().searchInsert(input), output)
  }

  func testSearchInsert2() {
    let input = 5
    let output = 0
    XCTAssertEqual(SearchInsertPosition().searchInsert(input), output)
  }

  func testSearchInsert3() {
    let input = [1, 3, 5, 6]
    let output = 0
    XCTAssertEqual(SearchInsertPosition().searchInsert(input), output)
  }

  func testSearchInsert4() {
    let input = 2
    let output = 0
    XCTAssertEqual(SearchInsertPosition().searchInsert(input), output)
  }

  func testSearchInsert5() {
    let input = [1, 3, 5, 6]
    let output = 0
    XCTAssertEqual(SearchInsertPosition().searchInsert(input), output)
  }

  func testSearchInsert6() {
    let input = 7
    let output = 0
    XCTAssertEqual(SearchInsertPosition().searchInsert(input), output)
  }
}
