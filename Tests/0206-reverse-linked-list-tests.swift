@testable
import Leetcode
import Testing

@Suite
struct ReverseLinkedListTests {
  @Test func testReverseList1() {
    let input = ListNode.makeList([1, 2, 3, 4, 5])
    let output = ReverseLinkedList().reverseList(input)
    #expect(output?.val == 5)
    #expect(output?.next?.val == 4)
    #expect(output?.next?.next?.val == 3)
    #expect(output?.next?.next?.next?.val == 2)
    #expect(output?.next?.next?.next?.next?.val == 1)
  }

  @Test func testReverseList2() {
    let input = ListNode.makeList([1, 2])
    let output = ReverseLinkedList().reverseList(input)
    #expect(output?.val == 2)
    #expect(output?.next?.val == 1)
  }

  @Test func testReverseList3() {
    let input = ListNode.makeList([])
    let output = ReverseLinkedList().reverseList(input)
    #expect(output == nil)
  }
}
