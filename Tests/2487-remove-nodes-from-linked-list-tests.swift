@testable
import Leetcode
import XCTest

final class RemoveNodesFromLinkedListTests: XCTestCase {
  func testRemovenodes1() {
    let input = ListNode([5, 2, 13, 3, 8])
    let output = ListNode([13, 8])
    XCTAssertEqual(RemoveNodesFromLinkedList().removeNodes(input), output)
  }

  func testRemovenodes2() {
    let input = ListNode([1, 1, 1, 1])
    let output = ListNode([1, 1, 1, 1])
    XCTAssertEqual(RemoveNodesFromLinkedList().removeNodes(input), output)
  }
}
