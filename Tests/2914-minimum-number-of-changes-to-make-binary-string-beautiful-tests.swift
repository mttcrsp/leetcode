@testable
import Leetcode
import XCTest

final class MinimumNumberOfChangesToMakeBinaryStringBeautifulTests: XCTestCase {
  func testMinChanges1() {
    let input = "1001"
    let output = 2
    XCTAssertEqual(MinimumNumberOfChangesToMakeBinaryStringBeautiful().minChanges(input), output)
  }

  func testMinChanges2() {
    let input = "10"
    let output = 1
    XCTAssertEqual(MinimumNumberOfChangesToMakeBinaryStringBeautiful().minChanges(input), output)
  }

  func testMinChanges3() {
    let input = "0000"
    let output = 0
    XCTAssertEqual(MinimumNumberOfChangesToMakeBinaryStringBeautiful().minChanges(input), output)
  }
}
