@testable
import Leetcode
import Testing

@Suite
struct RemoveNthNodeFromEndOfListTests {
  @Test func testRemoveNthFromEnd1() {
    let input = (ListNode.makeList([1, 2, 3, 4, 5]), 2)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    #expect(output?.val == 1)
    #expect(output?.next?.val == 2)
    #expect(output?.next?.next?.val == 3)
    #expect(output?.next?.next?.next?.val == 5)
  }

  @Test func testRemoveNthFromEnd2() {
    let input = (ListNode.makeList([1]), 1)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    #expect(output?.val == nil)
  }

  @Test func testRemoveNthFromEnd3() {
    let input = (ListNode.makeList([1, 2]), 1)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    #expect(output?.val == 1)
  }

  @Test func testRemoveNthFromEnd4() {
    let input = (ListNode.makeList([1, 2]), 2)
    let output = RemoveNthNodeFromEndOfList().removeNthFromEnd(input.0, input.1)
    #expect(output?.val == 2)
  }
}
