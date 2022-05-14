@testable
import Leetcode
import XCTest

final class FindMinimumInRotatedSortedArrayTests: XCTestCase {
  func testTestFindmin1() {
    let input = [3, 4, 5, 1, 2]
    let output = 1
    XCTAssertEqual(FindMinimumInRotatedSortedArray().findMin(input), output)
  }

  func testTestFindmin2() {
    let input = [4, 5, 6, 7, 0, 1, 2]
    let output = 0
    XCTAssertEqual(FindMinimumInRotatedSortedArray().findMin(input), output)
  }

  func testTestFindmin3() {
    let input = [11, 13, 15, 17]
    let output = 11
    XCTAssertEqual(FindMinimumInRotatedSortedArray().findMin(input), output)
  }
}
