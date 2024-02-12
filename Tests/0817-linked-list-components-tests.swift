@testable
import Leetcode
import XCTest

final class LinkedListComponentsTests: XCTestCase {
  func testNumcomponents1() {
    let input = (ListNode.makeList([0, 1, 2, 3]), [0, 1, 3])
    let output = 2
    XCTAssertEqual(LinkedListComponents().numComponents(input.0, input.1), output)
  }

  func testNumcomponents2() {
    let input = (ListNode.makeList([0, 1, 2, 3, 4]), [0, 3, 1, 4])
    let output = 2
    XCTAssertEqual(LinkedListComponents().numComponents(input.0, input.1), output)
  }

  func testNumcomponents3() {
    let input = (ListNode.makeList([0, 1, 2, 3]), [3, 2, 1, 0])
    let output = 1
    XCTAssertEqual(LinkedListComponents().numComponents(input.0, input.1), output)
  }
}
