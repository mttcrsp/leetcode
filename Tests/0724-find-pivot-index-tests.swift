@testable
import Leetcode
import XCTest

final class FindPivotIndexTests: XCTestCase {
  func testPivotIndex1() {
    let input = [1, 7, 3, 6, 5, 6]
    let output = 3
    XCTAssertEqual(FindPivotIndex().pivotIndex(input), output)
  }

  func testPivotIndex2() {
    let input = [1, 2, 3]
    let output = -1
    XCTAssertEqual(FindPivotIndex().pivotIndex(input), output)
  }

  func testPivotIndex3() {
    let input = [2, 1, -1]
    let output = 0
    XCTAssertEqual(FindPivotIndex().pivotIndex(input), output)
  }

  func testPivotIndex4() {
    let input = [-1, 1, 2]
    let output = 2
    XCTAssertEqual(FindPivotIndex().pivotIndex(input), output)
  }
}
