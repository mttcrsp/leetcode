@testable
import Leetcode
import XCTest

final class FindPeakElementTests: XCTestCase {
  func testTestFindpeakelement1() {
    let input = [1, 2, 3, 1]
    let output = 2
    XCTAssertEqual(FindPeakElement().findPeakElement(input), output)
  }

  func testTestFindpeakelement2() {
    let input = [1, 2, 1, 3, 5, 6, 4]
    let output = 5
    XCTAssertEqual(FindPeakElement().findPeakElement(input), output)
  }
}
