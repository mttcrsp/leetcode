@testable
import Leetcode
import XCTest

final class MergeTwoSortedListsTests: XCTestCase {
  func testMergeTwoLists1() {
    let input = (
      ListNode([1, 2, 4]),
      ListNode([1, 3, 4])
    )
    let output = MergeTwoSortedLists().mergeTwoLists(input.0, input.1)
    XCTAssertEqual(output?.val, 1)
    XCTAssertEqual(output?.next?.val, 1)
    XCTAssertEqual(output?.next?.next?.val, 2)
    XCTAssertEqual(output?.next?.next?.next?.val, 3)
    XCTAssertEqual(output?.next?.next?.next?.next?.val, 4)
    XCTAssertEqual(output?.next?.next?.next?.next?.next?.val, 4)
  }

  func testMergeTwoLists2() {
    let input = (
      ListNode([]),
      ListNode([])
    )
    let output = MergeTwoSortedLists().mergeTwoLists(input.0, input.1)
    XCTAssertNil(output)
  }

  func testMergeTwoLists3() {
    let input = (
      ListNode([]),
      ListNode([0])
    )
    let output = MergeTwoSortedLists().mergeTwoLists(input.0, input.1)
    XCTAssertEqual(output?.val, 0)
  }
}
