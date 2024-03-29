@testable
import Leetcode
import XCTest

final class MinimumFlipsToMakeAOrBEqualToCTests: XCTestCase {
  func testMinFlips1() {
    let input = (2, 6, 5)
    let output = 3
    XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2), output)
  }

  func testMinFlips2() {
    let input = (4, 2, 7)
    let output = 1
    XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2), output)
  }

  func testMinFlips3() {
    let input = (1, 2, 3)
    let output = 0
    XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2), output)
  }

  func testMinFlips4() {
    let input = (22145, 17643, 23881)
    let output = 7
    XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2), output)
  }

  func testMinFlips5() {
    let input = (5, 2, 8)
    let output = 4
    XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2), output)
  }
}
