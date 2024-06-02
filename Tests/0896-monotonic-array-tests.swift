@testable
import Leetcode
import XCTest

final class MonotonicArrayTests: XCTestCase {
  func testIsMonotonic1() {
    let input = [1, 2, 2, 3]
    let output = true
    XCTAssertEqual(MonotonicArray().isMonotonic(input), output)
  }

  func testIsMonotonic2() {
    let input = [6, 5, 4, 4]
    let output = true
    XCTAssertEqual(MonotonicArray().isMonotonic(input), output)
  }

  func testIsMonotonic3() {
    let input = [1, 3, 2]
    let output = false
    XCTAssertEqual(MonotonicArray().isMonotonic(input), output)
  }
}
