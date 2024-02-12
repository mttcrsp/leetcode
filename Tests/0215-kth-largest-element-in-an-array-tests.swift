@testable
import Leetcode
import XCTest

final class KthLargestElementInAnArrayTests: XCTestCase {
  func testFindkthlargest1() {
    let input = ([3, 2, 1, 5, 6, 4], 2)
    let output = 5
    XCTAssertEqual(KthLargestElementInAnArray().findKthLargest(input.0, input.1), output)
  }

  func testFindkthlargest2() {
    let input = ([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)
    let output = 4
    XCTAssertEqual(KthLargestElementInAnArray().findKthLargest(input.0, input.1), output)
  }

  func testFindkthlargest3() {
    let input = ([-1, -1], 2)
    let output = -1
    XCTAssertEqual(KthLargestElementInAnArray().findKthLargest(input.0, input.1), output)
  }
}
