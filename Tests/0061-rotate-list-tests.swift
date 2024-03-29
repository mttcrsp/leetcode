@testable
import Leetcode
import XCTest

final class RotateListTests: XCTestCase {
  func testRotateright1() {
    let input = (ListNode([1, 2, 3, 4, 5]), 2)
    let output = ListNode([4, 5, 1, 2, 3])
    XCTAssertEqual(RotateList().rotateRight(input.0, input.1).debugDescription, output.debugDescription)
  }

  func testRotateright2() {
    let input = (ListNode([0, 1, 2]), 4)
    let output = ListNode([2, 0, 1])
    XCTAssertEqual(RotateList().rotateRight(input.0, input.1).debugDescription, output.debugDescription)
  }

  func testRotateright3() {
    let input = (nil as ListNode?, 4)
    let output = nil as ListNode?
    XCTAssertEqual(RotateList().rotateRight(input.0, input.1).debugDescription, output.debugDescription)
  }

  func testRotateright4() {
    let input = (ListNode([1, 2, 3, 4]), 4)
    let output = ListNode([1, 2, 3, 4])
    XCTAssertEqual(RotateList().rotateRight(input.0, input.1).debugDescription, output.debugDescription)
  }

  func testRotateright5() {
    let input = (ListNode([1]), 4)
    let output = ListNode([1])
    XCTAssertEqual(RotateList().rotateRight(input.0, input.1).debugDescription, output.debugDescription)
  }

  func testRotateright6() {
    let input = (ListNode([1, 2, 3]), 10)
    let output = ListNode([3, 1, 2])
    XCTAssertEqual(RotateList().rotateRight(input.0, input.1).debugDescription, output.debugDescription)
  }
}
