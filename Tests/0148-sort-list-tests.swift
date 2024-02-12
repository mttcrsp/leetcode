@testable
import Leetcode
import XCTest

final class SortListTests: XCTestCase {
  func testSortlist1() {
    let input = ListNode([4, 2, 1, 3])
    let output = ListNode([1, 2, 3, 4])
    XCTAssertEqual(SortList().sortList(input)?.debugDescription, output?.debugDescription)
  }

  func testSortlist2() {
    let input = ListNode([-1, 5, 3, 4, 0])
    let output = ListNode([-1, 0, 3, 4, 5])
    XCTAssertEqual(SortList().sortList(input)?.debugDescription, output?.debugDescription)
  }

  func testSortlist3() {
    let input = ListNode([])
    let output = ListNode([])
    XCTAssertEqual(SortList().sortList(input)?.debugDescription, output?.debugDescription)
  }
}
