@testable
import Leetcode
import XCTest

final class RemoveNthNodeFromEndOfListTests: XCTestCase {
  func testRemoveNthFromEnd1() {
    let input = (ListNode.makeList([1, 2, 3, 4, 5]), 2)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    XCTAssertEqual(output?.val, 1)
    XCTAssertEqual(output?.next?.val, 2)
    XCTAssertEqual(output?.next?.next?.val, 3)
    XCTAssertEqual(output?.next?.next?.next?.val, 5)
  }

  func testRemoveNthFromEnd2() {
    let input = (ListNode.makeList([1]), 1)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    XCTAssertNil(output?.val)
  }

  func testRemoveNthFromEnd3() {
    let input = (ListNode.makeList([1, 2]), 1)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    XCTAssertEqual(output?.val, 1)
  }

  func testRemoveNthFromEnd4() {
    let input = (ListNode.makeList([1, 2]), 2)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    XCTAssertEqual(output?.val, 2)
  }
}
