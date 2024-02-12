@testable
import Leetcode
import XCTest

final class RemoveDuplicatesFromSortedListIiTests: XCTestCase {
  func testDeleteduplicates1() {
    let input = ListNode([1, 2, 3, 3, 4, 4, 5])
    let output = ListNode([1, 2, 5])
    XCTAssertEqual(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription, output?.debugDescription)
  }

  func testDeleteduplicates2() {
    let input = ListNode([1, 1, 1, 2, 3])
    let output = ListNode([2, 3])
    XCTAssertEqual(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription, output?.debugDescription)
  }

  func testDeleteduplicates3() {
    let input = ListNode([1, 2, 2])
    let output = ListNode([1])
    XCTAssertEqual(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription, output?.debugDescription)
  }

  func testDeleteduplicates4() {
    let input = ListNode([1])
    let output = ListNode([1])
    XCTAssertEqual(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription, output?.debugDescription)
  }

  func testDeleteduplicates5() {
    let input: ListNode? = nil
    let output: ListNode? = nil
    XCTAssertEqual(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription, output?.debugDescription)
  }

  func testDeleteduplicates6() {
    let input = ListNode([1, 1, 1])
    let output: ListNode? = nil
    XCTAssertEqual(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription, output?.debugDescription)
  }
}
