@testable
import Leetcode
import XCTest

final class FindRightIntervalTests: XCTestCase {
  func testFindRightInterval1() {
    let input = [[1, 2]]
    let output = [-1]
    XCTAssertEqual(FindRightInterval().findRightInterval(input), output)
  }

  func testFindRightInterval2() {
    let input = [[3, 4], [2, 3], [1, 2]]
    let output = [-1, 0, 1]
    XCTAssertEqual(FindRightInterval().findRightInterval(input), output)
  }

  func testFindRightInterval3() {
    let input = [[1, 4], [2, 3], [3, 4]]
    let output = [-1, 2, -1]
    XCTAssertEqual(FindRightInterval().findRightInterval(input), output)
  }

  func testFindRightInterval4() {
    let input = [[23, 37], [28, 16], [20, 12], [38, 30], [40, 24], [34, 27], [24, 24], [20, 38], [33, 27], [19, 6], [26, 25], [34, 2], [39, 22], [24, 18], [16, 30], [39, 24], [12, 25], [30, 3], [14, 25], [21, 26]]
    let output = [3, 14, 16, 17, 6, 1, 6, 3, 1, 16, 10, 16, 0, 9, 17, 6, 10, 16, 10, 10]
    XCTAssertEqual(FindRightInterval().findRightInterval(input), output)
  }
}
