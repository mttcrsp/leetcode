@testable
import Leetcode
import XCTest

final class SplitLinkedListInPartsTests: XCTestCase {
  func testTestSplitlisttoparts1() {
    let input = (ListNode([1, 2, 3]), 5)
    let output = [ListNode([1]), ListNode([2]), ListNode([3]), ListNode([]), ListNode([])]
    XCTAssertEqual(SplitLinkedListInParts().splitListToParts(input.0, input.1), output)
  }

  func testTestSplitlisttoparts2() {
    let input = (ListNode([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), 3)
    let output = [ListNode([1, 2, 3, 4]), ListNode([5, 6, 7]), ListNode([8, 9, 10])]
    XCTAssertEqual(SplitLinkedListInParts().splitListToParts(input.0, input.1), output)
  }
}
