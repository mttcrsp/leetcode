@testable
import Leetcode
import XCTest

final class FirstBadVersionTests: XCTestCase {
  func testIsBadVersion1() {
    let input = (5, 4)
    let output = 4
    XCTAssertEqual(FirstBadVersion(firstBadVersion: input.1).firstBadVersion(input.0), output)
  }

  func testIsBadVersion2() {
    let input = (1, 1)
    let output = 1
    XCTAssertEqual(FirstBadVersion(firstBadVersion: input.1).firstBadVersion(input.0), output)
  }
}
