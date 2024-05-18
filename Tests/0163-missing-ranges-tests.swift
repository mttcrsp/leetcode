@testable
import Leetcode
import XCTest

final class MissingRangesTests: XCTestCase {
  func testFindMissingRanges1() {
    let input = ([0, 1, 3, 50, 75], 0, 99)
    let output = [[2, 2], [4, 49], [51, 74], [76, 99]]
    XCTAssertEqual(MissingRanges().findMissingRanges(input.0, input.1, input.2), output)
  }

  func testFindMissingRanges2() {
    let input = ([-1], -1, -1)
    let output = [] as [[Int]]
    XCTAssertEqual(MissingRanges().findMissingRanges(input.0, input.1, input.2), output)
  }
}
