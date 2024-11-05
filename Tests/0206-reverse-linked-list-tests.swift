@testable
import Leetcode
import XCTest

final class ReverseLinkedListTests: XCTestCase {
  func testReverseList1() {
    let input = ListNode([1, 2, 3, 4, 5])
    let output = ReverseLinkedList().reverseList(input)
    XCTAssertEqual(output?.val, 5)
    XCTAssertEqual(output?.next?.val, 4)
    XCTAssertEqual(output?.next?.next?.val, 3)
    XCTAssertEqual(output?.next?.next?.next?.val, 2)
    XCTAssertEqual(output?.next?.next?.next?.next?.val, 1)
  }

  func testReverseList2() {
    let input = ListNode([1, 2])
    let output = ReverseLinkedList().reverseList(input)
    XCTAssertEqual(output?.val, 2)
    XCTAssertEqual(output?.next?.val, 1)
  }

  func testReverseList3() {
    let input = ListNode([])
    let output = ReverseLinkedList().reverseList(input)
    XCTAssertNil(output)
  }
}
