@testable
import Leetcode
import XCTest

final class MinimumNumberOfOperationsToMakeArrayEmptyTests: XCTestCase {
  func testMinoperations1() {
    let input = [2, 3, 3, 2, 2, 4, 2, 3, 4]
    let output = 4
    XCTAssertEqual(MinimumNumberOfOperationsToMakeArrayEmpty().minOperations(input), output)
  }

  func testMinoperations2() {
    let input = [2, 1, 2, 2, 3, 3]
    let output = -1
    XCTAssertEqual(MinimumNumberOfOperationsToMakeArrayEmpty().minOperations(input), output)
  }
}
