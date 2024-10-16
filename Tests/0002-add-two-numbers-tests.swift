@testable
import Leetcode
import XCTest

final class AddTwoNumbersTests: XCTestCase {
  func testAddTwoNumbers1() {
    let input = (ListNode([2, 4, 3]), ListNode([5, 6, 4]))
    let output = ListNode([7, 0, 8])
    XCTAssertEqual(AddTwoNumbers().addTwoNumbers(input.0, input.1), output)
  }

  func testAddTwoNumbers3() {
    let input = (ListNode([0]), ListNode([0]))
    let output = ListNode([0])
    XCTAssertEqual(AddTwoNumbers().addTwoNumbers(input.0, input.1), output)
  }

  func testAddTwoNumbers5() {
    let input = (ListNode([9, 9, 9, 9, 9, 9, 9]), ListNode([9, 9, 9, 9]))
    let output = ListNode([8, 9, 9, 9, 0, 0, 0, 1])
    XCTAssertEqual(AddTwoNumbers().addTwoNumbers(input.0, input.1), output)
  }
}
