@testable
import Leetcode
import Testing

@Suite
struct DeleteTheMiddleNodeOfALinkedListTests {
  @Test func testDeletemiddle1() {
    let input = ListNode.makeList([1, 3, 4, 7, 1, 2, 6])
    let output = "1 -> 3 -> 4 -> 1 -> 2 -> 6"
    #expect(DeleteTheMiddleNodeOfALinkedList().deleteMiddle(input)?.debugDescription == output)
  }

  @Test func testDeletemiddle2() {
    let input = ListNode.makeList([1, 2, 3, 4])
    let output = "1 -> 2 -> 4"
    #expect(DeleteTheMiddleNodeOfALinkedList().deleteMiddle(input)?.debugDescription == output)
  }

  @Test func testDeletemiddle3() {
    let input = ListNode.makeList([2, 1])
    let output = "2"
    #expect(DeleteTheMiddleNodeOfALinkedList().deleteMiddle(input)?.debugDescription == output)
  }
}
