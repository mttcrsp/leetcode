@testable
import Leetcode
import Testing

@Suite
struct PalindromeLinkedListTests {
  @Test func testIsPalindrome1() {
    let input = ListNode.makeList([1, 2, 2, 1])
    let output = true
    #expect(PalindromeLinkedList().isPalindrome(input) == output)
  }

  @Test func testIsPalindrome2() {
    let input = ListNode.makeList([1, 2])
    let output = false
    #expect(PalindromeLinkedList().isPalindrome(input) == output)
  }
}
