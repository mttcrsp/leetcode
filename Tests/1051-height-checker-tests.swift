@testable
import Leetcode
import XCTest

final class HeightCheckerTests: XCTestCase {
  func testHeightChecker1() {
    let input = [1, 1, 4, 2, 1, 3]
    let output = 3
    XCTAssertEqual(HeightChecker().heightChecker(input), output)
  }

  func testHeightChecker2() {
    let input = [5, 1, 2, 3, 4]
    let output = 5
    XCTAssertEqual(HeightChecker().heightChecker(input), output)
  }

  func testHeightChecker3() {
    let input = [1, 2, 3, 4, 5]
    let output = 0
    XCTAssertEqual(HeightChecker().heightChecker(input), output)
  }
}
