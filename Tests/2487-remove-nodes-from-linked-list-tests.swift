@testable
import Leetcode
import Testing

@Suite
struct RemoveNodesFromLinkedListTests {
  @Test func testRemovenodes1() {
    let input = ListNode([5, 2, 13, 3, 8])
    let output = ListNode([13, 8])
    #expect(RemoveNodesFromLinkedList().removeNodes(input) == output)
  }

  @Test func testRemovenodes2() {
    let input = ListNode([1, 1, 1, 1])
    let output = ListNode([1, 1, 1, 1])
    #expect(RemoveNodesFromLinkedList().removeNodes(input) == output)
  }
}
