@testable
import Leetcode
import XCTest

final class DeleteNodeInALinkedListTests: XCTestCase {
  func testDeleteNode1() {
    let list = ListNode.makeList([1, 2, 3, 4])
    DeleteNodeInALinkedList().deleteNode(list?.next?.next)
    XCTAssertEqual(list?.val, 1)
    XCTAssertEqual(list?.next?.val, 2)
    XCTAssertEqual(list?.next?.next?.val, 4)
    XCTAssertNil(list?.next?.next?.next)
  }

  func testDeleteNode2() {
    DeleteNodeInALinkedList().deleteNode(nil)
  }
}
