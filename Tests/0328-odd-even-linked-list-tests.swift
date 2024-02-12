@testable
import Leetcode
import XCTest

final class OddEvenLinkedListTests: XCTestCase {
  func testOddevenlist1() {
    let input = ListNode.makeList([1, 2, 3, 4, 5])
    let output = ListNode.makeList([1, 3, 5, 2, 4])
    XCTAssertEqual(OddEvenLinkedList().oddEvenList(input).debugDescription, output.debugDescription)
  }

  func testOddevenlist2() {
    let input = ListNode.makeList([2, 1, 3, 5, 6, 4, 7])
    let output = ListNode.makeList([2, 3, 6, 7, 1, 5, 4])
    XCTAssertEqual(OddEvenLinkedList().oddEvenList(input).debugDescription, output.debugDescription)
  }
}
