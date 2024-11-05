@testable
import Leetcode
import XCTest

final class AddTwoNumbersIiTests: XCTestCase {
  func testAddTwoNumbers1() {
    let input = (
      ListNode([0]),
      ListNode([0])
    )
    let actual = AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? []
    let expected = [0]
    XCTAssertEqual(actual, expected)
  }

  func testAddTwoNumbers2() {
    let input = (
      ListNode([5]),
      ListNode([5])
    )
    let actual = AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? []
    let expected = [1, 0]
    XCTAssertEqual(actual, expected)
  }

  func testAddTwoNumbers3() {
    let input = (
      ListNode([9, 8, 7]),
      ListNode([9, 8])
    )
    let actual = AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? []
    let expected = [1, 0, 8, 5]
    XCTAssertEqual(actual, expected)
  }

  func testAddTwoNumbers4() {
    let input = (
      ListNode([7, 2, 4, 3]),
      ListNode([5, 6, 4])
    )
    let actual = AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? []
    let expected = [7, 8, 0, 7]
    XCTAssertEqual(actual, expected)
  }
}

private extension ListNode {
  func makeArray() -> [Int] {
    var result: [Int] = []
    var node: ListNode? = self
    while let current = node {
      result.append(current.val)
      node = current.next
    }
    return result
  }
}
