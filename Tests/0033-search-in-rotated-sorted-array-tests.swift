@testable
import Leetcode
import XCTest

final class SearchInRotatedSortedArrayTests: XCTestCase {
  func testSearch1() {
    let input = ([4, 5, 6, 7, 0, 1, 2], 0)
    let output = 4
    XCTAssertEqual(SearchInRotatedSortedArray().search(input.0, input.1), output)
  }

  func testSearch2() {
    let input = ([4, 5, 6, 7, 0, 1, 2], 3)
    let output = -1
    XCTAssertEqual(SearchInRotatedSortedArray().search(input.0, input.1), output)
  }

  func testSearch3() {
    let input = ([1], 0)
    let output = -1
    XCTAssertEqual(SearchInRotatedSortedArray().search(input.0, input.1), output)
  }

  func testSearch4() {
    let input = ([1, 3, 5], 3)
    let output = 1
    XCTAssertEqual(SearchInRotatedSortedArray().search(input.0, input.1), output)
  }
}
