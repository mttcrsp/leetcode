@testable
import Leetcode
import XCTest

final class SortIntegersByTheNumberOf1BitsTests: XCTestCase {
  func testSortByBits1() {
    let input = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    let output = [0, 1, 2, 4, 8, 3, 5, 6, 7]
    XCTAssertEqual(SortIntegersByTheNumberOf1Bits().sortByBits(input), output)
  }

  func testSortByBits2() {
    let input = [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]
    let output = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
    XCTAssertEqual(SortIntegersByTheNumberOf1Bits().sortByBits(input), output)
  }
}
