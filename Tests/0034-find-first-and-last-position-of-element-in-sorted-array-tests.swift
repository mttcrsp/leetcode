@testable
import Leetcode
import XCTest

final class FindFirstAndLastPositionOfElementInSortedArrayTests: XCTestCase {
  func testTestSearchrange1() {
    let input = ([5, 7, 7, 8, 8, 10], 8)
    let output = [3, 4]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange2() {
    let input = ([5, 7, 7, 8, 8, 10], 6)
    let output = [-1, -1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange3() {
    let input = ([] as [Int], 0)
    let output = [-1, -1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange4() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 8)
    let output = [3, 5]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange5() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 10)
    let output = [6, 6]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange6() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 5)
    let output = [0, 0]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange7() {
    let input = ([5, 5, 7, 7, 8, 8, 8, 10], 5)
    let output = [0, 1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }

  func testTestSearchrange8() {
    let input = ([1], 0)
    let output = [-1, -1]
    XCTAssertEqual(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1), output)
  }
}
