@testable
import Leetcode
import XCTest

final class PalindromeLinkedListTests: XCTestCase {
  func testIsPalindrome1() {
    let input = ListNode([1, 2, 2, 1])
    let output = true
    XCTAssertEqual(PalindromeLinkedList().isPalindrome(input), output)
  }

  func testIsPalindrome2() {
    let input = ListNode([1, 2])
    let output = false
    XCTAssertEqual(PalindromeLinkedList().isPalindrome(input), output)
  }
}
