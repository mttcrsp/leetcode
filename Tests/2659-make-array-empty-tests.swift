@testable
import Leetcode
import XCTest

final class MakeArrayEmptyTests: XCTestCase {
  func testTestCountoperationstoemptyarray1() {
    let input = [3, 4, -1]
    let output = 5
    XCTAssertEqual(MakeArrayEmpty().countOperationsToEmptyArray(input), output)
  }

  func testTestCountoperationstoemptyarray2() {
    let input = [1, 2, 4, 3]
    let output = 5
    XCTAssertEqual(MakeArrayEmpty().countOperationsToEmptyArray(input), output)
  }

  func testTestCountoperationstoemptyarray3() {
    let input = [1, 2, 3]
    let output = 3
    XCTAssertEqual(MakeArrayEmpty().countOperationsToEmptyArray(input), output)
  }

  func testTestCountoperationstoemptyarray4() {
    let input = [2, 4, 5, 6, 1, 8, 7]
    let output = 14
    XCTAssertEqual(MakeArrayEmpty().countOperationsToEmptyArray(input), output)
  }
}
