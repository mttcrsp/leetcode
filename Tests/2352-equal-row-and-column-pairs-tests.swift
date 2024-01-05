@testable
import Leetcode
import XCTest

final class EqualRowAndColumnPairsTests: XCTestCase {
  func testTestEqualpairs1() {
    let input = [[3, 2, 1], [1, 7, 6], [2, 7, 7]]
    let output = 1
    XCTAssertEqual(EqualRowAndColumnPairs().equalPairs(input), output)
  }

  func testTestEqualpairs2() {
    let input = [[3, 1, 2, 2], [1, 4, 4, 5], [2, 4, 2, 2], [2, 4, 2, 2]]
    let output = 3
    XCTAssertEqual(EqualRowAndColumnPairs().equalPairs(input), output)
  }
}
