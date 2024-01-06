@testable
import Leetcode
import XCTest

final class DeleteTheMiddleNodeOfALinkedListTests: XCTestCase {
  func testTestDeletemiddle1() {
    let input = ListNode.makeList([1, 3, 4, 7, 1, 2, 6])
    let output = "1 -> 3 -> 4 -> 1 -> 2 -> 6"
    XCTAssertEqual(DeleteTheMiddleNodeOfALinkedList().deleteMiddle(input)?.debugDescription, output)
  }

  func testTestDeletemiddle2() {
    let input = ListNode.makeList([1, 2, 3, 4])
    let output = "1 -> 2 -> 4"
    XCTAssertEqual(DeleteTheMiddleNodeOfALinkedList().deleteMiddle(input)?.debugDescription, output)
  }

  func testTestDeletemiddle3() {
    let input = ListNode.makeList([2, 1])
    let output = "2"
    XCTAssertEqual(DeleteTheMiddleNodeOfALinkedList().deleteMiddle(input)?.debugDescription, output)
  }
}
