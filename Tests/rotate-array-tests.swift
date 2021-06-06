@testable
import Leetcode
import XCTest

final class RotateArrayTests: XCTestCase {
  func testRotate1() {
    var input = ([1, 2, 3, 4, 5, 6, 7], 3)
    let output = [5, 6, 7, 1, 2, 3, 4]
    RotateArray().rotate(&input.0, input.1)
    XCTAssertEqual(input.0, output)
  }

  func testRotate2() {
    var input = ([-1, -100, 3, 99], 2)
    let output = [3, 99, -1, -100]
    RotateArray().rotate(&input.0, input.1)
    XCTAssertEqual(input.0, output)
  }
}
