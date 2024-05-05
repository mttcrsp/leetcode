@testable
import Leetcode
import XCTest

final class MergeKSortedListsTests: XCTestCase {
  func testMergeKLists1() {
    let input = [[1, 4, 5], [1, 3, 4], [2, 6]].map(ListNode.init)
    let output = ListNode([1, 1, 2, 3, 4, 4, 5, 6])
    XCTAssertEqual(MergeKSortedLists().mergeKLists(input), output)
  }

  func testMergeKLists2() {
    let input = [] as [ListNode?]
    let output: ListNode? = nil
    XCTAssertEqual(MergeKSortedLists().mergeKLists(input), output)
  }

  func testMergeKLists3() {
    let input = [nil] as [ListNode?]
    let output: ListNode? = nil
    XCTAssertEqual(MergeKSortedLists().mergeKLists(input), output)
  }
}
