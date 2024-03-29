@testable
import Leetcode
import XCTest

final class FindFirstAndLastPositionOfElementInSortedArrayTests: XCTestCase {
  func testSearchrange1() {
    let input = ([5, 7, 7, 8, 8, 10], 8)
    let output = [3, 4]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange2() {
    let input = ([5, 7, 7, 8, 8, 10], 6)
    let output = [-1, -1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange3() {
    let input = ([] as [Int], 0)
    let output = [-1, -1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange4() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 8)
    let output = [3, 5]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange5() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 10)
    let output = [6, 6]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange6() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 5)
    let output = [0, 0]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange7() {
    let input = ([5, 5, 7, 7, 8, 8, 8, 10], 5)
    let output = [0, 1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testSearchrange8() {
    let input = ([1], 0)
    let output = [-1, -1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }
}
