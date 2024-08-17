@testable
import Leetcode
import XCTest

final class ContiguousArrayTests: XCTestCase {
  func testFindMaxLength1() {
    let input = [0, 1]
    let output = 2
    XCTAssertEqual(ContiguousArray().findMaxLength(input), output)
  }

  func testFindMaxLength2() {
    let input = [0, 1, 0]
    let output = 2
    XCTAssertEqual(ContiguousArray().findMaxLength(input), output)
  }

  func testFindMaxLength3() {
    let input = [0, 1, 1, 1, 1, 1, 0]
    let output = 2
    XCTAssertEqual(ContiguousArray().findMaxLength(input), output)
  }

  func testFindMaxLength4() {
    let input = [0, 0, 0, 0, 1, 1, 1, 1, 1, 0]
    let output = 10
    XCTAssertEqual(ContiguousArray().findMaxLength(input), output)
  }
}
