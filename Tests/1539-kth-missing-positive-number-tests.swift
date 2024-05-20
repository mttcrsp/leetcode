@testable
import Leetcode
import XCTest

final class KthMissingPositiveNumberTests: XCTestCase {
  func testFindKthPositive1() {
    let input = ([2, 3, 4, 7, 11], 5)
    let output = 9
    XCTAssertEqual(KthMissingPositiveNumber().findKthPositive(input.0, input.1), output)
  }

  func testFindKthPositive2() {
    let input = ([1, 2, 3, 4], 2)
    let output = 6
    XCTAssertEqual(KthMissingPositiveNumber().findKthPositive(input.0, input.1), output)
  }

  func testFindKthPositive3() {
    let input = ([99], 5)
    let output = 5
    XCTAssertEqual(KthMissingPositiveNumber().findKthPositive(input.0, input.1), output)
  }
}
