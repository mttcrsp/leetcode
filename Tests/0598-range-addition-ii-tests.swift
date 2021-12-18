@testable
import Leetcode
import XCTest

final class RangeAdditionIiTests: XCTestCase {
  func testMaxCount1() {
    let input = (3, 3, [[2, 2], [3, 3]])
    let output = 4
    XCTAssertEqual(RangeAdditionIi().maxCount(input.0, input.1, input.2), output)
  }

  func testMaxCount2() {
    let input = (3, 3, [[2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3]])
    let output = 4
    XCTAssertEqual(RangeAdditionIi().maxCount(input.0, input.1, input.2), output)
  }

  func testMaxCount3() {
    let input = (3, 3, [] as [[Int]])
    let output = 9
    XCTAssertEqual(RangeAdditionIi().maxCount(input.0, input.1, input.2), output)
  }

  func testMaxCount4() {
    let input = (40000, 40000, [] as [[Int]])
    let output = 1_600_000_000
    XCTAssertEqual(RangeAdditionIi().maxCount(input.0, input.1, input.2), output)
  }

  func testMaxCount5() {
    let input = (39999, 39999, [[19999, 19999]])
    let output = 399_960_001
    XCTAssertEqual(RangeAdditionIi().maxCount(input.0, input.1, input.2), output)
  }
}
