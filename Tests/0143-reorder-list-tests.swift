@testable
import Leetcode
import XCTest

final class ReorderListTests: XCTestCase {
  func testTestReorderlist1() {
    let input = [1, 2, 3, 4]
    let head = ListNode.makeList(input)
    ReorderList().reorderList(head)
    XCTAssertEqual(head?.val, 1)
    XCTAssertEqual(head?.next?.val, 4)
    XCTAssertEqual(head?.next?.next?.val, 2)
    XCTAssertEqual(head?.next?.next?.next?.val, 3)
    XCTAssertNil(head?.next?.next?.next?.next)
  }

  func testTestReorderlist2() {
    let input = [1, 2, 3, 4, 5]
    let head = ListNode.makeList(input)
    ReorderList().reorderList(head)
    XCTAssertEqual(head?.val, 1)
    XCTAssertEqual(head?.next?.val, 5)
    XCTAssertEqual(head?.next?.next?.val, 2)
    XCTAssertEqual(head?.next?.next?.next?.val, 4)
    XCTAssertEqual(head?.next?.next?.next?.next?.val, 3)
    XCTAssertNil(head?.next?.next?.next?.next?.next)
  }

  func testTestReorderlist3() {
    let input = [1]
    let head = ListNode.makeList(input)
    ReorderList().reorderList(head)
    XCTAssertEqual(head?.val, 1)
    XCTAssertNil(head?.next)
  }
}
